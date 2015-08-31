unit HelpFunctions;

interface

uses ibase, ib_externals, DateUtils, classes, Dialogs, SysUtils;

function Strip(L:char;C:string;Str:string):string;
function PQuadToDateTime(ib_date: PISC_QUAD): TDateTime;
procedure WriteBlobToStream(Blob: PBlob; Stream: TStream);
procedure WriteStreamToBlob(Stream: TStream; Blob: PBlob);
function FormatHouseNum( HouseNum: string ): string;

implementation

function Strip(L:char;C:string;Str:string):string;
{L is left,center,right,all,ends}
var Ii :  integer;
begin
   if length(str)<>0 then
    Case Upcase(L) of
    'L' : begin       {Left}
              While (length(Str) > 0)  and  (pos(Str[1],C)<>0) and (length(Str) > 0) do
                    Delete(Str,1,1);
          end;
    'R' : begin       {Right}
              While ((length(Str) > 0)  and ( pos(Str[length(Str)],C)<>0)) do
                    Delete(Str,length(Str),1);
          end;
    'B' : begin       {Both left and right}
              While (length(Str) > 0)  and    (pos(Str[1],C)<>0) do
                    Delete(Str,1,1);
              While (length(Str) > 0)  and  (pos(Str[length(Str)],C)<>0)  do
                    Delete(Str,length(Str),1);
             {удаляем лишние символы}
              II := 1;
              Repeat
                   If (length(Str) > 0)  and  (pos(Str[Ii],C)<>0)
                    and (ii<length(Str))and (pos(Str[Ii+1],C)<>0)
                    then
                      Delete(Str,Ii,1)
                   else
                      Ii := succ(Ii);
              Until (Ii > length(Str)) or (Str = '');
          end;
    'A' : begin       {All}
              II := 1;
              Repeat
                   If (length(Str) > 0)  and  (pos(Str[Ii],C)<>0) then
                      Delete(Str,Ii,1)
                   else
                      Ii := succ(Ii);
              Until (Ii > length(Str)) or (Str = '');
          end;
    end;
    Strip := Str;
end;  {Func Strip}


function PQuadToDateTime(ib_date: PISC_QUAD): TDateTime;
var
  day, mon, year, hour, min, sec: Word;
  ctmd: TCTimeStructure;
begin
  isc_decode_date(ib_date, @ctmd);
  year := ctmd.tm_year + 1900;
  mon := ctmd.tm_mon + 1;
  day := ctmd.tm_mday;
  hour := ctmd.tm_hour;
  min := ctmd.tm_min;
  sec := ctmd.tm_sec;
  result := EncodeDateTime(year, mon, day, hour, min, sec, 0);
end;

procedure WriteBlobToStream(Blob: PBlob; Stream: TStream);
var
  buffer: PChar;
  i, buff_size, bytes_read: integer;
begin
  if (not Assigned(Blob)) or
     (not Assigned(Blob^.BlobHandle)) then exit;
  with Blob^ do
  begin
    buff_size:=SegmentCount*MaxSegmentLength;
    GetMem(buffer, buff_size);
    try
      for i:=0 to SegmentCount-1 do
        GetSegment(BlobHandle, @buffer[i*MaxSegmentLength], MaxSegmentLength, bytes_read);
      Stream.WriteBuffer(buffer^, TotalSize);
    finally
      FreeMem(buffer, buff_size);
    end;
  end; //end with Blob^
end;

procedure WriteStreamToBlob(Stream: TStream; Blob: PBlob);
var
  buffer: PChar;
  buff_size: integer;
begin
  if (not Assigned(Blob)) or
     (not Assigned(Blob^.BlobHandle)) then exit;


//  try

  buff_size:=Stream.Size;


  //MessageDlg(IntToStr(buff_size),mtError, [mbOk],1);

  GetMem(buffer, buff_size);
  try
    Stream.Read(buffer^, buff_size);
    Blob^.PutSegment(Blob^.BlobHandle, buffer, buff_size);
  finally
    FreeMem(buffer, buff_size);
  end;

{
  except
    on E: Exception do
    begin
      WriteTextToFile('c:\log.txt', E.Message);
    end;
  end;
}
end;

function FormatHouseNum( HouseNum: string ): string;
var
  _ChislaSet, _RazdelSet :set of Char;
  i, length_s: integer;
  _IntPart, _CharPart, _s: string;
begin
  try
    _ChislaSet := ['0'..'9'];
    _RazdelSet := [' ', '.', '-', '+', ',', '\', '/'];

    _IntPart := '';
    _CharPart := '';
    _s := trim( HouseNum );
    length_s := length( _s );
    //
    i := 1;
    while ( i <= length_s ) and ( _s[i] in _ChislaSet ) do
    begin
      _IntPart := _IntPart + _s[i];
      i := i + 1;
    end;

    while ( i <= length_s ) and ( _s[i] in _RazdelSet ) do i := i + 1;

    while ( i <= length_s ) and not(  _s[i] in [' ', '-', '\', '/'] ) do
    begin
      _CharPart := _CharPart + _s[i];
      i := i + 1;
    end;

    Result := AnsiUpperCase( _IntPart + _CharPart );
  except
  end
end;


end.
