unit DiskonOptForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseOptionForm, StdCtrls, Buttons, frm_dat,Selform;

type
  Tfrm_DiskonOpt = class(Tfrm_BaseOption)
    Frm_Date1: TFrm_Date;
    btn_ok: TBitBtn;
    btn_cansel: TBitBtn;
    btn_revs: TBitBtn;
    procedure btn_okClick(Sender: TObject);
    procedure btn_canselClick(Sender: TObject);
    procedure btn_revsClick(Sender: TObject);
  private
    { Private declarations }
     F_RevsID,  F_RevsName :string;
    procedure setDateIn(d:TdateTime);
    procedure setDateOut(d:TdateTime);
    function getDateIn:tDatetime;
    function getDateOut:tDatetime;

  public
    { Public declarations }
    property DateIn:TDateTime read getDateIn write setDateIn;
    property DateOut:TDateTime read getDateOut write setDateOut;
    property RevsID :string read F_RevsID;
    property RevsName: string read F_RevsName;
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

procedure Tfrm_DiskonOpt.btn_revsClick(Sender: TObject);
var
  sel_frm: TSelectForm;
begin
  inherited;
 sel_frm:=TSelectForm.Create(self);
  sel_frm.Query.SQL.Text:='select id code,name_r pole1 from s_revs where (id>0) and del=''-''';
  sel_frm.ShowModal;
  F_RevsID:=sel_frm.Temp_Code;
  F_RevsName:=sel_frm.SelText;
end;

end.
