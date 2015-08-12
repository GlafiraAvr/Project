unit DiskonOptForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseOptionForm, StdCtrls, Buttons, frm_dat;

type
  Tfrm_DiskonOpt = class(Tfrm_BaseOption)
    Frm_Date1: TFrm_Date;
    btn_ok: TBitBtn;
    btn_cansel: TBitBtn;
    procedure btn_okClick(Sender: TObject);
    procedure btn_canselClick(Sender: TObject);
  private
    { Private declarations }
    procedure setDateIn(d:TdateTime);
    procedure setDateOut(d:TdateTime);
    function getDateIn:tDatetime;
    function getDateOut:tDatetime;

  public
    { Public declarations }
    property DateIn:TDateTime read getDateIn write setDateIn;
    property DateOut:TDateTime read getDateOut write setDateOut;
  end;

var
  frm_DiskonOpt: Tfrm_DiskonOpt;

implementation

{$R *.dfm}

procedure Tfrm_DiskonOpt.btn_okClick(Sender: TObject);
begin
  inherited;
if (Frm_Date1.CheckFields) and   (Frm_Date1.CorrextDates) then
    ModalResult:=mrOK
  else
    Application.MessageBox('Дата не введена или введена неверно. Попробуйте еще раз.',
                            'Диспетчер АВР', MB_OK+MB_ICONWARNING);

end;

procedure Tfrm_DiskonOpt.btn_canselClick(Sender: TObject);
begin
  inherited;
  ModalResult:=mrCancel;
  Close();

end;



function Tfrm_DiskonOpt.getDateIn: tDatetime;
begin
result:=Frm_Date1.getDateIn;

end;

function Tfrm_DiskonOpt.getDateOut: tDatetime;
begin
result:=Frm_Date1.getDateOut;

end;

procedure Tfrm_DiskonOpt.setDateIn(d: TdateTime);
begin
Frm_Date1.setDateIn(d);
end;

procedure Tfrm_DiskonOpt.setDateOut(d: TdateTime);
begin
Frm_Date1.setDateOut(d);
end;

end.
