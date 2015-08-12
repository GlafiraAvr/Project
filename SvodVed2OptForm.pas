unit SvodVed2OptForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseOptionForm, ComCtrls, StdCtrls, Mask, ToolEdit, ExtCtrls,
  Buttons;

type
  Tfrm_SvodVed2Opt = class(Tfrm_BaseOption)
    dp_Time: TDateTimePicker;
    dp_Date: TDateEdit;
    btn_revs: TBitBtn;
    btn_ok: TBitBtn;
    btn_cancel: TBitBtn;
    Bevel1: TBevel;
    Label1: TLabel;
    Bevel2: TBevel;
    gb_Attach: TGroupBox;
    chb_Voda: TCheckBox;
    chb_Kanal: TCheckBox;
    chb_Vrk: TCheckBox;
    GroupBox1: TGroupBox;
    chb_Close: TCheckBox;
    chb_Open: TCheckBox;
    chb_Viesnen: TCheckBox;
    chb_Lozh: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btn_revsClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
  protected
    F_RevsName, F_RevsID: string;
    function GetRevsName: string;
    function GetZavTypeNames: string; virtual;
  public
    property RevsName: string read GetRevsName;
    property ZavTypeNames: string read GetZavTypeNames;
    property RevsID: string read F_RevsID;
    constructor Create(AOwner: TComponent; Title: string);
  end;


implementation

{$R *.dfm}

uses Selform, ServiceFuncUnit;

{ Tfrm_SvodVed2Opt }

constructor Tfrm_SvodVed2Opt.Create(AOwner: TComponent; Title: string);
begin
  inherited Create(AOwner);
  Caption:=Title;
end;

procedure Tfrm_SvodVed2Opt.FormShow(Sender: TObject);
begin
  inherited;
  F_RevsName := '';
  F_RevsID := '';
end;

procedure Tfrm_SvodVed2Opt.btn_revsClick(Sender: TObject);
var
  sel_frm: TSelectForm;
begin
  sel_frm:=TSelectForm.Create(self);
  sel_frm.Query.SQL.Text:='select id code,name_r pole1 from s_revs where (id>0) and del=''-''';
  sel_frm.ShowModal;
  F_RevsID:=sel_frm.Temp_Code;
  F_RevsName:=sel_frm.SelText;
end;


procedure Tfrm_SvodVed2Opt.btn_okClick(Sender: TObject);
begin
  if (dp_Date.Date=0) or (not IsDateCorrect(dp_Date.Text)) then
  begin
    Application.MessageBox('���� �� ������� ��� ������� �������. ���������� ��� ���.',
                            '��������� ���', MB_OK+MB_ICONWARNING);
    exit;
  end;

  ModalResult:=mrOK;
end;

procedure Tfrm_SvodVed2Opt.btn_cancelClick(Sender: TObject);
begin
  Close;
end;

function Tfrm_SvodVed2Opt.GetRevsName: string;
begin
  Result:=trim(F_RevsName);
  if Result='' then Result:='���';
end;

function Tfrm_SvodVed2Opt.GetZavTypeNames: string;
  procedure _check( _chb: TCheckBox );
  begin
    if _chb.Checked then
      Result := Result + ', ' + trim( _chb.Caption );
  end;
begin
  Result := '';

  _check( chb_Close );
  _check( chb_Open );
  _check( chb_Viesnen );
  _check( chb_Lozh );

  Delete( Result, 1, 2 );
end;

end.
