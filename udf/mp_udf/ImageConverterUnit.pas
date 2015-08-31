unit ImageConverterUnit;

interface

uses Classes, Graphics, Jpeg;

type
  TImageFormat=(ifBMP, ifJPG);

  TImageConverter=class
  private
    F_InputStream: TStream;
    F_OutputStream: TStream;
    F_OutImageFormat: TImageFormat;
    F_BigestSize: integer;  //размер наибольшей стороны
    function LoadToBMPFromInputStream(bmp: TBitMap): boolean;
    procedure ScaleBMP(var bmp: TBitMap; BigestSize: integer);
    procedure SaveBMPToOutputStream(var bmp: TBitMap; ImageFormat: TImageFormat);
    procedure Init;
  public
    property InputStream: TStream read F_InputStream write F_InputStream;
    property OutputStream: TStream read F_OutputStream write F_OutputStream;
    property OutImageFormat: TImageFormat read F_OutImageFormat write F_OutImageFormat;
    property BigestSize: integer read F_BigestSize write F_BigestSize;
    procedure Convert;
    constructor Create;
  end;

implementation

{ TImageConverter }

procedure TImageConverter.Convert;
var
  bmp: TBitMap;
begin
  bmp:=TBitMap.Create;
  try
    if not LoadToBMPFromInputStream(bmp) then exit;
    ScaleBMP(bmp, F_BigestSize);
    SaveBMPToOutputStream(bmp, F_OutImageFormat);
  finally
    bmp.Free;
  end;
end;

constructor TImageConverter.Create;
begin
  inherited Create;
  Init;
end;

procedure TImageConverter.Init;
begin
  F_OutImageFormat:=ifJPG;
  F_BigestSize:=0;
end;

function TImageConverter.LoadToBMPFromInputStream(bmp: TBitMap): boolean;
var
  mem_stream: TMemoryStream;
  jpg: TJPEGImage;
begin
  Result:=true;
  try
    mem_stream:=TMemoryStream.Create;
    try
      mem_stream.LoadFromStream(F_InputStream);
      bmp.LoadFromStream(mem_stream);
    finally
      mem_stream.Clear;
      mem_stream.Free;
    end;
  except
    try
      mem_stream:=TMemoryStream.Create;
      jpg:=TJPEGImage.Create;
      try
        mem_stream.LoadFromStream(F_InputStream);
        jpg.LoadFromStream(mem_stream);
        bmp.Assign(jpg);
      finally
        jpg.Free;
        mem_stream.Clear;
        mem_stream.Free;
      end;
    except
      Result:=false;
    end;
  end;
end;

procedure TImageConverter.SaveBMPToOutputStream(var bmp: TBitMap; ImageFormat: TImageFormat);
var
  jpg: TJPEGImage;
begin
  case ImageFormat of
    ifJPG:
      begin
        jpg:=TJPEGImage.Create;
        try
          jpg.Assign(bmp);
          jpg.SaveToStream(F_OutputStream);
        finally
          jpg.Free;
        end;
      end;
    ifBMP:
      begin
        bmp.SaveToStream(F_OutputStream);
      end;
  end; //end case
end;

procedure TImageConverter.ScaleBMP(var bmp: TBitMap; BigestSize: integer);
var
  tmp_bmp: TBitMap;
  scale: double;
begin
  {BigestSize - размер наибольшей стороны}
  if BigestSize=0 then exit;

  tmp_bmp:=TBitMap.Create;
  try
    if bmp.Height>bmp.Width then scale:=BigestSize/bmp.Height
    else scale:=BigestSize/bmp.Width;

    tmp_bmp.Width:=Round(bmp.Width*scale);
    tmp_bmp.Height:=Round(bmp.Height*scale);
    tmp_bmp.Canvas.StretchDraw(tmp_bmp.Canvas.Cliprect, bmp);

    bmp.Assign(tmp_bmp);
  finally
    tmp_bmp.Free;
  end;
end;

end.
