unit OperAttFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRMLANG, Menus;

type
  TFormMode=(tfmZayavNew,tfmZayavCopy,tfmZayavAfterInsert);
  TOperAtt=(
    toaNull     = 0,
    toaVoda     = 1,
    toaKanal    = 2,
    toaVRK      = 3,
    toaObjVoda  = 4,
    toaObjKanal = 5 );

  TOperAttForm = class(TFormLang)
  private
    { Private declarations }
  public
    { Public declarations }
    OperateAttach:TOperAtt;
    function OperAttFormFill(Sender:TObject):TOperAtt;
  end;

function OperAttDetectFromMenuItem(Sender:TObject):TOperAtt;
function GetAttachName(oper_att: TOperAtt): string;

var
  OperAttForm: TOperAttForm;
  LastMenuItemSender_Tag:integer;

implementation

{$R *.dfm}

function GetAttachName(oper_att: TOperAtt): string;
begin
  case oper_att of
    toaVoda: Result := 'бнднопнбнд';
    toaKanal: Result := 'йюмюкхгюжхъ';
    toaVRK: Result := 'бпй';
    toaObjVoda: Result := 'назейрш бнднопнбндю';
    toaObjKanal: Result := 'назейрш йюмюкхгюжхх';
  end;
end;


function OperAttDetectFromMenuItem(Sender:TObject):TOperAtt;
var _sender_menu:boolean;
begin
  if (Sender=nil) then _sender_menu:=false else _sender_menu:=(Sender is TMenuItem);
  //
  if not _sender_menu then
    begin
      if LastMenuItemSender_Tag=0 then exit;
    end
      else LastMenuItemSender_Tag:=(Sender as TMenuItem).Tag;
  case LastMenuItemSender_Tag of
    1: result := toaVoda;
    2: result := toaKanal;
    3: result := toaVRK;
    4: result := toaObjVoda;
    5: result := toaObjKanal;
    else
    result:=toaVoda;
  end;
end;

function TOperAttForm.OperAttFormFill(Sender:TObject):TOperAtt;
var _OperAtt:TOperAtt;
begin
  _OperAtt:=OperAttDetectFromMenuItem(Sender);
  //
  with self do
  begin
    OperateAttach:=_OperAtt;
    case _OperAtt of
      toaVoda: Caption := Caption + ' бнднопнбнд ';
      toaKanal: Caption := Caption + ' йюмюкхгюжхъ ';
      toaVRK: Caption := Caption + ' бпй';
      toaObjVoda: Caption := Caption + ' назейрш бнднопнбндю';
      toaObjKanal: Caption := Caption + ' назейрш йюмюкхгюжхх';
    end;
  end;
  Result:=_OperAtt;
end;

end.
