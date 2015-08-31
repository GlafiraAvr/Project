unit StrFunc;

interface

uses HelpFunctions;

function Str_to_Int(s: PChar): integer; cdecl; export;
function Is_HouseNum_Equal(HouseNum1, HouseNum2: PChar): integer; cdecl; export;


implementation

function Str_to_Int(s: PChar): integer; cdecl; export;
var
  temp, i: integer;
  Str: string;
begin
    Str:=s;
    If length(Str) = 0 then
       Str_to_Int := 0
    else
    begin
       Str:=Strip('A',' ',Str);
       for i:=1 to length(str) do
          if not (str[i] in ['0'..'9','+','-']) then begin
            delete (str,i,length(str));
            break;
          end;
       val(Str,temp,i);
          Str_to_Int := temp
    end;
end;

function Is_HouseNum_Equal(HouseNum1, HouseNum2: PChar): integer; cdecl; export;
var
  _s1, _s2: string;
begin
  _s1 := FormatHouseNum( HouseNum1 );
  _s2 := FormatHouseNum( HouseNum2 );
  if _s1 = _s2 then
    Result := 1
  else
    Result := 0;
end;

end.
