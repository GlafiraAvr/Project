unit OtlNaradListForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SecurityBaseForm,OtlNaradListDModule, Grids,GridViewBuilder,cntsLANG,
  StdCtrls, Buttons, ExtCtrls, Aligrid,FormZavFactory;

type
  linkStatus = (notLink, changeLink,savedLink,delLink);
  Tfrm_OtlNaradList = class(Tfrm_SecurityBase)
    save_panel: TPanel;
    btn_linked: TBitBtn;
    btn_saved: TBitBtn;
    BitBtn3: TBitBtn;
    Grid: TStringAlignGrid;
    btn_del: TBitBtn;
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure btn_linkedClick(Sender: TObject);
    procedure btn_savedClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btn_delClick(Sender: TObject);
  private
    { Private declarations }
    F_id_zav:integer;
    f_id_attach:integer;
    F_otlNar:integer;
    F_idnewOtl:integer;
    F_dm:Tdm_OtlNaradList;
    gvb:TGridViewBuilder;
    F_namefiltr :string;
    F_link:linkStatus;
    F_oltNarNumber:string;
    procedure ShowZav(id_zav: integer);
    procedure setLinkstatus();
  public
    { Public declarations }
    constructor Create(AOwner:TComponent;id_zav,id_attach:integer); overload;
    property id_zav :integer write F_id_zav ;
    property id_atttach:integer write F_id_attach ;
    property namefiltr :string write F_namefiltr ;
    property oltNarNumber:string  read F_oltNarNumber;
  end;

var
  frm_OtlNaradList: Tfrm_OtlNaradList;

implementation

{$R *.dfm}

uses HelpFunctions,ServiceFuncUnit,frmLANG,zav,OperAttFormUnit,main;

{ Tfrm_OtlNaradList }

constructor Tfrm_OtlNaradList.Create(AOwner: TComponent; id_zav,
  id_attach: integer);
begin
inherited Create(AOwner);
 f_id_zav:=id_zav;
 F_id_attach:=id_attach;
 F_dm:=Tdm_OtlNaradList.Create(self,F_id_zav,F_id_attach);
end;

procedure Tfrm_OtlNaradList.FormDestroy(Sender: TObject);
begin
  inherited;
   gvb.Free;
  F_dm.Free;


end;

procedure Tfrm_OtlNaradList.FormShow(Sender: TObject);
begin
  inherited;
  try
  F_link:=notLink;
  if    F_dm.prepareList(F_id_attach) then
  begin
   {if F_dm.dset.RecordCount=0 then
    begin

     exit;
    end;
    }
   if F_dm.otlOrder>0 then
    begin
     F_otlNar:=F_dm.otlOrder;
     F_link:=savedLink;
    end;
    setLinkstatus();

   gvb:=TGridViewBuilder.Create(F_dm.memmain,grid);

    try
       gvb.IDFieldName:='id';
       AddColToGVB(gvb, 'NOMER', 'Номер'+#13+'наряда', alCenter);
       AddColToGVB(gvb, 'dt_in', 'Дата'+#13+'поступления', alCenter);
       AddColToGVB(gvb, 'REV', 'Участок', alCenter);
       AddColToGVB(gvb, 'ADres', 'Адрес', alLeft);
       AddColToGVB(gvb, 'PLACE', 'Место'+#13+'повреждения', alLeft);

      gvb.BuildGridView;
      Caption:=' Отложенные наряды '+ F_namefiltr;
      if   F_link=savedLink then
       Grid.ColorRow[1]:=BGCol;
    except
      MessageBoxEx(application.handle,
         pchar('  '+TrLangMSG(msgErrorExecQuery)),
         pchar(TrLangMSG(msgError)), MB_OK+MB_ICONERROR+MB_SETFOREGROUND,$0419);
     exit;
    end;
  end;
  except
     MessageBoxEx(application.handle,
         pchar('  '+TrLangMSG(msgErrorExecQuery)),
         pchar(TrLangMSG(msgError)), MB_OK+MB_ICONERROR+MB_SETFOREGROUND,$0419);
     exit;
  end;
end;

procedure Tfrm_OtlNaradList.BitBtn3Click(Sender: TObject);
begin
  inherited;


Close;
end;

procedure Tfrm_OtlNaradList.ShowZav(id_zav: integer);
var
  ZvForm:TFormZav;
begin
  ZvForm:=TFormZav_ZavCreate(nil,tfmZayavAfterInsert,id_zav);
  try
  ZvForm.ShowModal;
  if CloseStatus<>0 then
    repeat
      if CloseStatus=2 then
        ZvForm:=TFormZav_ZavCreate(nil,tfmZayavCopy,ZavToCopy)
      else
        ZvForm:=TFormZav_ZavCreate(nil,tfmZayavNew,0);

      ZvForm.ShowModal;
    until CloseStatus=0;
    finally
     ZvForm.Free;
    end;

end;

procedure Tfrm_OtlNaradList.GridDblClick(Sender: TObject);
begin
  inherited;
if Assigned(Grid.Objects[0,Grid.Row]) then
      ShowZav(integer(Grid.Objects[0,Grid.Row]));
end;

procedure Tfrm_OtlNaradList.setLinkstatus;
begin
if f_dm.memmain.RecordCount=0 then
begin
  btn_linked.Enabled:=false;
 btn_saved.Enabled:=false;
end
else

case f_link of
    notLink: begin
               btn_linked.Enabled:=true;
               btn_saved.Enabled:=false;
               btn_del.Enabled:=false;
             end;
    changeLink: begin
                  btn_linked.Enabled:=false;
                  btn_saved.Enabled:=true;
                  btn_del.Enabled:=false;
                end;

    savedLink: begin
                  btn_linked.Enabled:=false;
                  btn_saved.Enabled:=false;
                  btn_del.Enabled:=true;
              end;
     delLink: begin
                btn_linked.Enabled:=false;
                btn_saved.Enabled:=true;
                btn_del.Enabled:=false;
              end;

end;
end;

procedure Tfrm_OtlNaradList.btn_linkedClick(Sender: TObject);
begin
  inherited;
  if Assigned(Grid.Objects[0,Grid.Row]) then
    begin
     F_idnewOtl:=integer(Grid.Objects[0,Grid.Row]);
     Grid.ColorRow[Grid.Row]:=BGCol;
//      F_oltNarNumber:=Grid.Cells[0,Grid.Row];
     f_link:=changeLink;
     setLinkstatus();
    end;
end;

procedure Tfrm_OtlNaradList.btn_savedClick(Sender: TObject);
begin
  inherited;
  if F_link=changeLink then
  begin
      if MessageDlg(TrLangMSG(msgSaveChanges),
                     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      if f_dm.Save(F_idnewOtl) then
      begin

          f_link:=savedLink;
          setLinkstatus();
          F_otlNar:=F_idnewOtl;
          F_oltNarNumber:=Grid.Cells[0,Grid.Row];
      end
      else
      begin
        F_oltNarNumber:='';
        MessageBoxEx(application.handle,
             pchar('  '+TrLangMSG(msgErrorExecQuery)),
             pchar(TrLangMSG(msgError)), MB_OK+MB_ICONERROR+MB_SETFOREGROUND,$0419);
      end;
  end;
  if f_Link = delLink then
  begin
   if MessageDlg(TrLangMSG(msgDelLink)+Grid.Cells[0,Grid.Row],
                     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      if f_dm.saveDel() then
      begin
       grid.RowCount:=1;
       gvb.BuildGridView;
       F_link:=notLink;
       setLinkstatus();
       F_otlNar:=-1;
       F_oltNarNumber:='';
      end;
  end;

end;

procedure Tfrm_OtlNaradList.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
if( F_link= changeLink) or(F_link= delLink) then
 if MessageDlg(TrLangMSG(msgExitWithSave),
                 mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        CanClose:=false;
end;

procedure Tfrm_OtlNaradList.btn_delClick(Sender: TObject);
begin
  inherited;
  f_link:=delLink;
  setLinkstatus();
end;

end.
