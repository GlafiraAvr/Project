unit BlobFunc;

interface

uses ibase, ib_externals, classes, HelpFunctions, ImageConverterUnit,
      Dialogs, SysUtils;

function ChangeBlobJpgSize(var NewX: integer; var NewY: integer; Blob: PBlob): PBlob; cdecl; export;
function Test(Blob: PBlob):integer; cdecl; export;
function ImgBlob_To_JPGBlob(Blob: PBlob; var NewSize: integer): PBlob; cdecl; export;

implementation



function ImgBlob_To_JPGBlob(Blob: PBlob; var NewSize: integer): PBlob; cdecl; export;
var
  InputS, OutputS: TMemoryStream;
  ImgCon: TImageConverter;


  buffer: PChar;
  buff_size: integer;
begin
  InputS:=TMemoryStream.Create;
  OutputS:=TMemoryStream.Create;
  ImgCon:=TImageConverter.Create;
  try
    WriteBlobToStream(Blob, InputS);

    ImgCon.InputStream:=InputS;
    ImgCon.OutputStream:=OutputS;
    ImgCon.BigestSize:=NewSize;
    ImgCon.OutImageFormat:=ifJPG;
    ImgCon.Convert;


    WriteStreamToBlob(OutputS, Blob);
    //WriteStreamToBlob(InputS, Blob);


    buff_size:=OutputS.Size;
    GetMem(buffer, buff_size);
    try
      OutputS.Read(buffer^, buff_size);
    //Stream.ReadBuffer(buffer^, buff_size);
      //Blob^.PutSegment(Blob^.BlobHandle, buffer, buff_size);

      //Blob^.
      //Blob^.PutSegment(Blob^.BlobHandle, buffer, Blob^.MaxSegmentLength);

    finally
      FreeMem(buffer, buff_size);
    end;
    Result:=Blob;
  finally
    InputS.Free;
    OutputS.Free;
    ImgCon.Free;
  end;
end;


function ChangeBlobJpgSize(var NewX: integer; var NewY: integer; Blob: PBlob): PBlob; cdecl; export;
begin
//
end;

function Test(Blob: PBlob):integer; cdecl; export;
var
  Stream:TMemoryStream;
  s: string;
begin

  result:=1;
  Stream:= TMemoryStream.Create;
  try
    WriteBlobToStream(Blob, Stream);
    Stream.SaveToFile('c:\1.bmp');
  finally
    Stream.Free;
  end;

end;

end.
