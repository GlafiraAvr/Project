unit NewDisconnections;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseGridForm, DB, IBCustomDataSet, IBDatabase, ComCtrls, Grids,
  DBGrids, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ExtCtrls,
  DBCtrlsEh, ToolEdit, RXDBCtrl,frmLANG,cntsLANG,testSetJson2;

type
  Tfrm_DisconNew = class(Tfrm_BaseGrid)
    mem_Disconnections: TMemo;
    Label1: TLabel;
    gb_DTTMExec: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    de_Discon  : TDBDateEdit;
    de_Con: TDBDateEdit;
    te_Discon: TDBDateTimeEditEh;
    te_Con: TDBDateTimeEditEh;
    dbl_Executor: TRxDBLookupCombo;
    dbl_BrigConnect: TRxDBLookupCombo;
    dset_executor: TIBDataSet;
    ds_Executor: TDataSource;
    dset_Brig_connect: TIBDataSet;
    ds_Brig_connect: TDataSource;
    dset_tmp: TIBDataSet;
    dset_mainID: TIntegerField;
    dset_mainID_ZAV: TIntegerField;
    dset_mainID_UL: TIntegerField;
    dset_mainHOUSE: TIBStringField;
    dset_mainCOMMENT: TIBStringField;
    dset_mainDTTM_DISCON: TDateTimeField;
    dset_mainDTTM_CON: TDateTimeField;
    dset_mainFK_DISCON_BRIG: TIntegerField;
    dset_mainFK_DISCON_BRIG_CONNECT: TIntegerField;
    dset_mainFK_DISCON_DISP_CONNECT: TIntegerField;
    dset_mainFK_DISCON_DISP_DISCONNECT: TIntegerField;
    dset_brigs_discon_as_disp: TIBDataSet;
    dset_brig_connect_as_disp: TIBDataSet;
    dset_mainName_discon_disp: TStringField;
    dset_mainName_Con_Disp: TStringField;
    ds_brigs_discon_as_disp: TDataSource;
    ds_brig_connect_as_disp: TDataSource;
    DBT_disp1: TDBText;
    DBT_disp2: TDBText;
    lbl_disp1: TLabel;
    lbl_disp2: TLabel;
    dset_mainlook_streets: TStringField;
    dset_mainlook_DISCON_BRIG: TStringField;
    dset_mainlook_BRIG_CONNECT: TStringField;
    dset_mainDTTM_CON_PLAN: TDateTimeField;
    dset_mainDTTM_DISCON_PLAN: TDateTimeField;
    dset_mainFK_DISCON_DISP_CONNECT_PLAN: TIntegerField;
    dset_mainFK_DISCON_DISP_DISCONNECT_PLAN: TIntegerField;
    dset_mainHOUSES_TO: TStringField;
    dset_mainTYP_HOUSE: TIntegerField;
    dbe_house_to: TDBEdit;
    dbc_typ_houses: TDBComboBoxEh;
    Label2: TLabel;
    Label3: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label4: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    Label5: TLabel;
    DBT_disp1plan: TDBText;
    Label6: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label7: TLabel;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    Label12: TLabel;
    DBT_disp2plan: TDBText;
    dset_brigs_discon_as_disp_plan: TIBDataSet;
    dset_brig_connect_as_disp_plan: TIBDataSet;
    ds_brig_connect_as_disp_plan: TDataSource;
    ds_brigs_discon_as_disp_plan: TDataSource;
    dset_mainName_discon_disp_plan: TStringField;
    dset_mainName_Con_Disp_plan: TStringField;
    dset_mainmodifi: TSmallintField;
   procedure btn_InsertClick(Sender: TObject);
   procedure btn_EditClick(Sender: TObject);       
   procedure FormCreate(Sender: TObject);
   procedure FormClose(Sender: TObject;  var Action: TCloseAction);
   procedure btn_PostClick(Sender: TObject);
   procedure FormShow(Sender: TObject);
    procedure dset_mainCalcFields(DataSet: TDataSet);
    procedure mem_DisconnectionsChange(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure dset_mainAfterScroll(DataSet: TDataSet);
    procedure dbl_BrigConnectChange(Sender: TObject);
    procedure dbl_ExecutorChange(Sender: TObject);
    procedure DBDateEdit1Change(Sender: TObject);
    procedure DBDateEdit2Change(Sender: TObject);
    procedure dset_mainAfterEdit(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure dset_mainAfterPost(DataSet: TDataSet);
    procedure dset_mainAfterDelete(DataSet: TDataSet);
    procedure dset_mainBeforeDelete(DataSet: TDataSet);
    procedure DBDateTimeEditEh1Change(Sender: TObject);
    procedure DBDateTimeEditEh2Change(Sender: TObject);
  protected
    class function GetGUID: string; override;
    procedure EnableCtrls(value: boolean); override;
    procedure Enable_ConnectTimeAllFill;
    procedure EnableOpenCtrls(value: boolean);
    function IsDateCorrect: boolean; override;
    function IsDataFieldsCorrect: boolean; override;
  private
    { Private declarations }
    F_DateShift: TDate;
    F_ResultString: string;
    F_ReadOnlyFrm: boolean;
  //  F_OrderID: integer;
    F_RayonS: string;
    F_IsResStrChange: boolean;

     ischanges:boolean;
     F_sentserv:TSentToServ;
     f_idDel:integer;
  public
    { Public declarations }
    listdel:TStringlist;
    property ResultString: string read F_ResultString write F_ResultString;
    property ReadOnlyFrm: boolean read F_ReadOnlyFrm write F_ReadOnlyFrm;
    property OrderID: integer read F_OrderID write F_OrderID;
    property RayonS: string read F_RayonS write F_RayonS;
    property DateShift: TDate write F_DateShift;
    procedure LoadData;
    property sentserv:TSentToServ write F_sentserv;
  end;

var
  frm_DisconNew: Tfrm_DisconNew;

implementation

{$R *.dfm}

uses main;

procedure Tfrm_DisconNew.FormCreate(Sender: TObject);
begin
  inherited;
  F_IsResStrChange := false;
  EnableOpenCtrls(false);
  listdel:=TStringlist.Create;
  ischanges:=false;
end;

procedure Tfrm_DisconNew.EnableCtrls(value: boolean);
begin
  dbe_house_to.Enabled:=value;
  dbc_typ_houses.Enabled:=value;
//  mem_Disconnections.Enabled:=value;
  de_Discon.Enabled := value;
  de_Con.Enabled := value;

  DBDateEdit1.Enabled:=value;
  DBDateTimeEditEh1.Enabled:=value;

  te_Discon.Enabled := value;
  te_Con.Enabled := value;

  dbl_Executor.Enabled := value;
  dbl_BrigConnect.Enabled := value;

//  bb_ConnectTimeAll.Enabled := value;
  DBDateEdit2.Enabled:=value;
  DBDateTimeEditEh2.Enabled:=value;

  inherited EnableCtrls(value);
end;

procedure  Tfrm_DisconNew.Enable_ConnectTimeAllFill;
begin
   //

end;

procedure Tfrm_DisconNew.EnableOpenCtrls(value: boolean);
begin
  mem_Disconnections.Enabled:=value;
end;



procedure Tfrm_DisconNew.FormClose (Sender: TObject;  var Action: TCloseAction);
begin
  inherited;

  //DM_Disconnection.Free;
end;

class function Tfrm_DisconNew.GetGUID: string;
begin
  //Result:=DISCONNECTGUID;
  Result:='1';
end;


procedure Tfrm_DisconNew.LoadData;
begin
    //
//  dset_main.ParamByName('orderid').AsInteger := F_OrderID ;
//  DM_Disconnection.OrderID := F_OrderID;
//  DM_Disconnection.RayonS := F_RayonS;
//  DM_Disconnection.ds_Disconnections.Open;
//  DM_Disconnection.ds_Disconnections.First;

end;

procedure Tfrm_DisconNew.btn_PostClick(Sender: TObject);
begin
inherited;
 ResultString:=mem_Disconnections.Text;
  EnableOpenCtrls(false);
  Enable_ConnectTimeAllFill;
end;


procedure Tfrm_DisconNew.FormShow(Sender: TObject);
begin


 inherited;
//  LoadData;
  dset_executor.Open;
  dset_Brig_connect.Open;
  dset_brigs_discon_as_disp.Open;
  dset_brigs_discon_as_disp_plan.Open;
  dset_brig_connect_as_disp.Open ;
  dset_brig_connect_as_disp_plan.Open;

  mem_Disconnections.Text := ResultString;
  mem_Disconnections.ReadOnly  := ReadOnlyFrm;

  F_IsResStrChange := false;

  if mem_Disconnections.Enabled then
    mem_Disconnections.SetFocus;

  Enable_ConnectTimeAllFill;
//  bb_ConnectTimeAll.Enabled := btn_Insert.Enabled;
  dset_mainCalcFields(dset_main);
   F_CtrlsChange:=false;
end;

procedure Tfrm_DisconNew.btn_InsertClick(Sender: TObject);
begin
  inherited btn_InsertClick(Sender);
  dset_Main.FieldByName('ID_ZAV').AsInteger:=F_OrderID;
  dset_Main.FieldByName('ID_UL').AsInteger:=-1;
  dset_Main.FieldByName('DTTM_DISCON').AsDateTime := Int(Now);
  dset_main.FieldByName('FK_DISCON_DISP_DISCONNECT').AsInteger:=CodUser;
  EnableOpenCtrls(true);

  dbl_Street.SetFocus;
end;

procedure Tfrm_DisconNew.btn_EditClick(Sender: TObject);
begin
  inherited btn_EditClick(Sender);
  EnableOpenCtrls(true);

  dbl_Street.SetFocus;
end;

procedure Tfrm_DisconNew.dset_mainCalcFields(DataSet: TDataSet);
begin
  inherited;
 //DataSet.FieldByName('calc_rayon').AsString := F_RayonS;
 if not  Dataset.IsEmpty then
 begin


 Dataset.FieldByName('Name_discon_disp').AsString:='';
 if not Dataset.fieldbyname('FK_DISCON_DISP_DISCONNECT').IsNull then
  if dset_brigs_discon_as_disp.Active then
  if (Dataset.fieldbyname('FK_DISCON_DISP_DISCONNECT').AsInteger<=0)or
  (not(dset_brigs_discon_as_disp.Locate('ID',
                                    VarArrayOf([Dataset.fieldbyname('FK_DISCON_DISP_DISCONNECT').AsInteger]),
                                    [loCaseInsensitive])) )then
    Dataset.FieldByName('Name_discon_Disp').AsString:=TrLangMSG(msgAdmin)
   else
   begin
     Dataset.FieldByName('Name_discon_disp').AsString:=dset_brigs_discon_as_disp.fieldByname('name_r').AsString;
   end;

 Dataset.FieldByName('Name_discon_disp_plan').AsString:='';
 if not Dataset.fieldbyname('FK_DISCON_DISP_DISCONNECT_plan').IsNull then
  if dset_brigs_discon_as_disp_plan.Active then
  if (Dataset.fieldbyname('FK_DISCON_DISP_DISCONNECT_plan').AsInteger<=0)or
  (not(dset_brigs_discon_as_disp_plan.Locate('ID',
                                    VarArrayOf([Dataset.fieldbyname('FK_DISCON_DISP_DISCONNECT_plan').AsInteger]),
                                    [loCaseInsensitive])) )then
    Dataset.FieldByName('Name_discon_Disp_plan').AsString:=TrLangMSG(msgAdmin)
   else
   begin
     Dataset.FieldByName('Name_discon_disp_plan').AsString:=dset_brigs_discon_as_disp_plan.fieldByname('name_r').AsString;
   end;

 Dataset.FieldByName('Name_Con_Disp').AsString:='';
 if not Dataset.fieldbyname('DTTM_CON').IsNull then
 if  not Dataset.fieldbyname('FK_DISCON_DISP_CONNECT').IsNull then
 if dset_brig_connect_as_disp.Active then
  if (Dataset.fieldbyname('FK_DISCON_DISP_CONNECT').AsInteger<=0)or
  (not(dset_brig_connect_as_disp.Locate('ID',
                                    VarArrayOf([Dataset.fieldbyname('FK_DISCON_DISP_CONNECT').AsInteger]),
                                    [loCaseInsensitive])) )then
    Dataset.FieldByName('Name_Con_Disp').AsString:=TrLangMSG(msgAdmin)
   else
   begin
     Dataset.FieldByName('Name_Con_Disp').AsString:=dset_brig_connect_as_disp.fieldByname('name_r').AsString;
   end;


  Dataset.FieldByName('Name_Con_Disp_plan').AsString:='';
 if not Dataset.fieldbyname('DTTM_CON_plan').IsNull then
 if  not Dataset.fieldbyname('FK_DISCON_DISP_CONNECT_plan').IsNull then
 if dset_brig_connect_as_disp_plan.Active then
  if (Dataset.fieldbyname('FK_DISCON_DISP_CONNECT_plan').AsInteger<=0)or
  (not(dset_brig_connect_as_disp_plan.Locate('ID',
                                    VarArrayOf([Dataset.fieldbyname('FK_DISCON_DISP_CONNECT_plan').AsInteger]),
                                    [loCaseInsensitive])) )then
    Dataset.FieldByName('Name_Con_Disp_plan').AsString:=TrLangMSG(msgAdmin)
   else
   begin
     Dataset.FieldByName('Name_Con_Disp_plan').AsString:=dset_brig_connect_as_disp_plan.fieldByname('name_r').AsString;
   end;
 end;
end;

procedure Tfrm_DisconNew.mem_DisconnectionsChange(Sender: TObject);
begin
  inherited;
   // F_CtrlsChange := true;

end;



function Tfrm_DisconNew.IsDateCorrect: boolean;
var _dttm_connect, _dttm_discon, _dttm_nextshift: TDatetime;
    _dttm_plan: TDatetime;
    _res:boolean;
begin
   //
   _res := true;
   _dttm_nextshift := F_DateShift + 1 + StrToTime('08:00:00');
   _dttm_connect := dset_main.FieldByName('DTTM_CON').AsDateTime;
   _dttm_discon := dset_main.FieldByName('DTTM_DISCON').AsDateTime;
  // _dttm_plan := dset_main.FieldByName('DTTM_PLAN').AsDateTime;

   if ((_dttm_connect = 0) and ( dset_main.FieldByName('FK_DISCON_BRIG_CONNECT').AsInteger > 0))
     then
        begin
          MessageDlg('Проверьте дату включения или нажмите "Отменить"', mtError, [mbOk], 1);
          _res := false;
        end;

   if ((_dttm_connect > 0) and ( _dttm_discon >  _dttm_connect))
         // and  (dset_main.FieldByName('FK_DISCON_BRIG_CONNECT').AsInteger > 0)
     then
        begin
          MessageDlg('Дата включения должна быть больше даты отключения', mtError, [mbOk], 1);
          _res := false;
        end;

   if ((_dttm_connect >= _dttm_nextshift))
     then
        begin
          MessageDlg('Время включения должно соответствовать дате смены ', mtError, [mbOk], 1);
          _res := false;
        end;

   if ( _dttm_connect > Now)
     then
        begin
          MessageDlg('Время включения больше текущей даты ', mtError, [mbOk], 1);
          _res := false;
        end;

   if ((_dttm_discon >= _dttm_nextshift))
     then
        begin
          MessageDlg('Время выключения должно соответствовать дате смены ', mtError, [mbOk], 1);
          _res := false;
        end;

   if ( _dttm_discon > Now)
     then
        begin
          MessageDlg('Время выключения больше текущей даты ', mtError, [mbOk], 1);
          _res := false;
        end;

 Result := _res;
end;

function Tfrm_DisconNew.IsDataFieldsCorrect: boolean;
var _res: boolean;
begin
  //
  _res := false;
  if dset_main.FieldByName('id_ul').AsInteger<=0 then
  begin
   MessageDlg('Не введёна улица!', mtError, [mbOk], 1);
   dbl_Street.SetFocus;
   _Res := false;
  end
   else
  
  if dset_main.FieldByName('FK_DISCON_BRIG').AsInteger >0 then _res := true
   else
    begin
      MessageDlg('Не введён исполнитель отключения', mtError, [mbOk], 1);
      _Res := false;
    end;
 if _res then
  if  ((dset_main.FieldByName('DTTM_CON').AsDateTime = 0)
        or (dset_main.FieldByName('FK_DISCON_BRIG_CONNECT').AsInteger > 0)) then _res:= true
        else
          begin
          MessageDlg('Не введён ответственный за включение', mtError, [mbOk], 1);          
          _res:= false;
          end;
  Result:= _res;

end;

procedure Tfrm_DisconNew.btn_CancelClick(Sender: TObject);
var BMark: string;
begin
  inherited;
  Tr_main.RollbackRetaining;
  BMark:=dset_Main.Bookmark;
  dset_Main.Close;
  dset_Main.Open;
  dset_Main.Bookmark:=BMark;
  Enable_ConnectTimeAllFill;

end;

procedure Tfrm_DisconNew.dset_mainAfterScroll(DataSet: TDataSet);
begin
  inherited;
 Enable_ConnectTimeAllFill;
  dset_mainCalcFields(Dataset);
  f_idDel:=dset_main.fieldbyname('id').AsInteger;
end;

procedure Tfrm_DisconNew.dbl_BrigConnectChange(Sender: TObject);
begin
  inherited;
  if dset_main.State in [dsEdit, dsInsert] then
  if not  dset_main.FieldByName('DTTM_CON').IsNull then
     dset_main.FieldByName('FK_DISCON_DISP_CONNECT').AsInteger:=CodUser
  else
     dset_main.FieldByName('FK_DISCON_DISP_CONNECT').AsVariant:=0;
  CtrlsChange(Sender);
end;

procedure Tfrm_DisconNew.dbl_ExecutorChange(Sender: TObject);
begin
  inherited;
  if dset_main.State in [dsEdit, DsInsert] then
    dset_main.FieldByName('FK_DISCON_DISP_DISCONNECT').AsInteger:=CodUser;
 CtrlsChange(sender);
end;

procedure Tfrm_DisconNew.DBDateEdit1Change(Sender: TObject);
begin
  inherited;

  if dset_main.State in [dsEdit, dsInsert] then
  if not  dset_main.FieldByName('DTTM_DIsCON_plan').IsNull then
     dset_main.FieldByName('FK_DISCON_DISP_DISCONNECT_plan').AsInteger:=CodUser
  else
     dset_main.FieldByName('FK_DISCON_DISP_DISCONNECT_plan').AsVariant:=0;
  CtrlsChange(Sender);
end;

procedure Tfrm_DisconNew.DBDateEdit2Change(Sender: TObject);
begin
  inherited;
if dset_main.State in [dsEdit, dsInsert] then
  if not  dset_main.FieldByName('DTTM_CON_plan').IsNull then
     dset_main.FieldByName('FK_DISCON_DISP_CONNECT_plan').AsInteger:=CodUser
  else
     dset_main.FieldByName('FK_DISCON_DISP_CONNECT_plan').AsVariant:=0;
  CtrlsChange(Sender);
end;

procedure Tfrm_DisconNew.dset_mainAfterEdit(DataSet: TDataSet);
begin
  inherited;
dset_main.FieldByName('modifi').AsInteger:=1;
if dset_main.FieldByName('TYP_HOUSE').IsNull then
   dset_main.FieldByName('TYP_HOUSE').AsInteger:=1;
end;

procedure Tfrm_DisconNew.FormDestroy(Sender: TObject);
begin
  inherited;
    listdel.Free;
end;

procedure Tfrm_DisconNew.dset_mainAfterPost(DataSet: TDataSet);
var houses:string;
begin
  inherited;
  houses:='';
  if not Dataset.FieldByName('house').IsNull then
  begin
    houses:=trim(Dataset.FieldByName('house').AsString);
    if not Dataset.FieldByName('houses_to').IsNull then
      houses:=houses+'-'+trim(Dataset.FieldByName('houses_to').AsString);
 end;

 case Dataset.FieldByName('TYP_HOUSE').AsInteger of
  0,1:houses:=houses+' все';
  2:houses:=houses+' чет';
  3:houses:=houses+' неч';
 end;



//заполняем посілку
F_sentserv.AddPlace(dset_main.fieldbyname('id').AsInteger,Dataset.fieldbyname('look_streets').asstring,houses,
Dataset.fieldbyname('DTTM_DISCON_Plan').asdatetime,Dataset.fieldbyname('DTTM_DISCON').asdatetime,
Dataset.fieldbyname('DTTM_CON_PLAN').asdatetime,Dataset.fieldbyname('DTTM_CON').asdatetime);
end;

procedure Tfrm_DisconNew.dset_mainAfterDelete(DataSet: TDataSet);
begin
  inherited;
  //заполняем посілку
  F_sentserv.AddDel(f_idDel);
end;

procedure Tfrm_DisconNew.dset_mainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  f_idDel:=dset_main.fieldbyname('id').AsInteger;
end;

procedure Tfrm_DisconNew.DBDateTimeEditEh1Change(Sender: TObject);
begin
if dset_main.FieldByName('DTTM_DISCON_PLAN').IsNull then
   dset_main.FieldByName('DTTM_DISCON_PLAN').AsDateTime:=Date();
DBDateEdit1Change(Sender);
  inherited;

end;

procedure Tfrm_DisconNew.DBDateTimeEditEh2Change(Sender: TObject);
begin
  inherited;
DBDateEdit2Change(Sender);
if dset_main.FieldByName('DTTM_CON_PLAN').IsNull then
   dset_main.FieldByName('DTTM_CON_PLAN').AsDateTime:=Date();
end;

end.
