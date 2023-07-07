unit ShadowBoxMain;

interface

uses Messages, Windows, SysUtils, Classes, Controls, Graphics, StdCtrls;

type
  TShadowBox = class(TGraphicControl)
  private
    FControl: TControl;
    FControlWndProc: TWndMethod;
    procedure SetControl(AControl: TControl);
    procedure ControlWndProc(var Message: TMessage);
    procedure AdjustBounds;
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure Paint; override;
  public
    destructor Destroy; override;
  published
    property Control: TControl read FControl write SetControl;
  end;

implementation

uses GBlur2;

destructor TShadowBox.Destroy;
begin
  SetControl(nil);
  inherited;
end;

procedure TShadowBox.SetControl(AControl: TControl);
begin
  if AControl = Self then Exit;

  if FControl <> AControl then
  begin
    if FControl <> nil then
    begin
      FControl.WindowProc := FControlWndProc;
      FControl.RemoveFreeNotification(Self);
    end;
    FControl := AControl;
    if FControl <> nil then
    begin
      FControlWndProc := FControl.WindowProc;
      FControl.WindowProc := ControlWndProc;
      FControl.FreeNotification(Self);
    end else
      FControlWndProc := nil;
    if FControl <> nil then
    begin
      Parent := FControl.Parent;
      AdjustBounds;
    end;
  end;
end;

procedure TShadowBox.ControlWndProc(var Message: TMessage);
begin
  if Assigned(FControlWndProc) then
    FControlWndProc(Message);
  case Message.Msg of
    CM_VISIBLECHANGED:
      Visible := FControl.Visible;
    WM_WINDOWPOSCHANGED:
      begin
        if Parent <> FControl.Parent then
          Parent := FControl.Parent;
        AdjustBounds;
      end;
  end;
end;

procedure TShadowBox.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;
  if (Operation = opRemove) and (AComponent = FControl) then
  begin
    FControl := nil;
    FControlWndProc := nil;
  end;
end;

procedure TShadowBox.AdjustBounds;
begin
  if FControl <> nil then
  begin
    SetBounds(FControl.Left - 8, FControl.Top - 8, FControl.Width + 16, FControl.Height + 16);
    if FControl is TWinControl then
      BringToFront
    else
      SendToBack;
  end;
end;

procedure PrepareBitmap32Shadow(Bitmap: TBitmap; Darkness: Byte=100);
var
  I, J: Integer;
  Pixels: PRGBQuad;
  Color: COLORREF;
begin
  for I := 0 to Bitmap.Height - 1 do
  begin
    Pixels := PRGBQuad(Bitmap.ScanLine[I]);
    for J := 0 to Bitmap.Width - 1 do
    begin
      with Pixels^ do
      begin
        Color := RGB(rgbRed, rgbGreen, rgbBlue);
        case Color of
          $FFFFFF: rgbReserved := 0;   // white = transparent
          $000000: rgbReserved := 255; // black = opaque
          else
            rgbReserved := 255 - ((rgbRed + rgbGreen + rgbBlue) div 3); // intensity of semi transparent
        end;
        rgbRed := Darkness; rgbGreen := Darkness; rgbBlue := Darkness; // darkness
        // pre-multiply the pixel with its alpha channel
        rgbRed := (rgbRed * rgbReserved) div $FF;
        rgbGreen := (rgbGreen * rgbReserved) div $FF;
        rgbBlue := (rgbBlue * rgbReserved) div $FF;
      end;
      Inc(Pixels);
    end;
  end;
end;

{$IFDEF VER130} // D5
const
  AC_SRC_ALPHA = $01;
{$ENDIF}

procedure TShadowBox.Paint;
var
  Bitmap: TBitmap;
  BlendFunction: TBlendFunction;
begin
  Bitmap := TBitmap.Create;
  try
    Bitmap.PixelFormat := pf24bit;
    Bitmap.Width := Width;
    Bitmap.Height := Height;
    Bitmap.Canvas.Pen.Color := clBlack;
    Bitmap.Canvas.Brush.Color := clBlack;
    Bitmap.Canvas.RoundRect(5, 5, Width - 5, Height - 5, 5, 5);

    GBlur(Bitmap, 3); // Radius

    Bitmap.PixelFormat := pf32bit;
    Bitmap.IgnorePalette := True;
    Bitmap.HandleType := bmDIB;

    PrepareBitmap32Shadow(Bitmap, 242); // Darkness

    BlendFunction.BlendOp := AC_SRC_OVER;
    BlendFunction.BlendFlags := 0;
    BlendFunction.SourceConstantAlpha := 255;
    BlendFunction.AlphaFormat := AC_SRC_ALPHA;

    Windows.AlphaBlend(
      Canvas.Handle,         // HDC hdcDest
      0,                     // int xoriginDest
      0,                     // int yoriginDest
      Bitmap.Width,          // int wDest
      Bitmap.Height,         // int hDest
      Bitmap.Canvas.Handle,  // HDC hdcSrc
      0,                     // int xoriginSrc
      0,                     // int yoriginSrc
      Bitmap.Width,          // int wSrc
      Bitmap.Height,         // int hSrc
      BlendFunction);        // BLENDFUNCTION
  finally
    Bitmap.Free;
  end;
end;
end.
