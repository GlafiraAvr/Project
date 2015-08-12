unit RaskopFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, NGRaskopDM, DB, Grids, DBGridEh, StdCtrls, RxLookup,
  Mask, DBCtrls, ToolEdit, RXDBCtrl, DBCtrlsEh, DBGrids, ExtCtrls;

type
  TEnabledBtns=record
    EnabledAdd,
    EnabledCopy,
    EnabledPost,
    EnabledDelete: boolean;
  end;

  TChangeEnabledBtnsEvent = procedure( _EnabledBtns: TEnabledBtns ) of object;

  TShowRaskopInfoEvent = procedure( _RaskopInfo: string ) of object;

  TTabType = (ttExist, ttNew);

  Tframe_Raskop = class(TFrame)
    tc_Raskops: TTabControl;
    ds_Raskop: TDataSource;
    gb_Adres: TGroupBox;
    dbl_tadr: TRxDBLookupCombo;
    dbl_S_Ulic1: TRxDBLookupCombo;
    dbl_S_Ulic2: TRxDBLookupCombo;
    ds_tadr: TDataSource;
    ds_S_Ulic1: TDataSource;
    ds_S_Ulic2: TDataSource;
    ed_HouseNum: TDBEdit;
    lbl_tadr: TLabel;
    lbl_S_Ulic1: TLabel;
    lbl_HouseNum: TLabel;
    lbl_S_Ulic2: TLabel;
    ed_Dop_Adr: TDBEdit;
    lbl_S_DopAdres: TLabel;
    dbl_S_DopAdres: TRxDBLookupCombo;
    ds_S_DopAdres: TDataSource;
    ds_S_Brig_Act: TDataSource;
    dbl_S_Mest: TRxDBLookupCombo;
    Label4: TLabel;
    Label1: TLabel;
    ed_Peredano: TDBEdit;
    Label2: TLabel;
    de_Dt_Act: TDBDateEdit;
    te_Dt_Act: TDBDateTimeEditEh;
    dbl_S_Brig_Act: TRxDBLookupCombo;
    mem_NeedWorks: TDBMemo;
    Label3: TLabel;
    ds_S_Mest: TDataSource;
    dbl_S_Brig_Blag: TRxDBLookupCombo;
    Label5: TLabel;
    ne_Len: TDBNumberEditEh;
    ne_Wid: TDBNumberEditEh;
    ne_Dep: TDBNumberEditEh;
    ds_S_Brig_Blag: TDataSource;
    mem_Ogragd: TDBMemo;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Bevel1: TBevel;
    Label13: TLabel;
    Label14: TLabel;
    dbl_S_Ogragd: TRxDBLookupCombo;
    ds_S_Ogragd: TDataSource;
    procedure dbl_tadrChange(Sender: TObject);
    procedure dbl_S_Ulic2Change(Sender: TObject);
    procedure tc_RaskopsChange(Sender: TObject);
    procedure ds_RaskopStateChange(Sender: TObject);
    procedure dbl_S_Ulic2DropDown(Sender: TObject);
    procedure tc_RaskopsChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure dbl_S_MestChange(Sender: TObject);
    procedure dbl_S_OgragdChange(Sender: TObject);
  private
    F_Raskop: Tdm_NGRaskop;
    F_IsShowTabs: boolean;
    F_OnChangeEnabledBtns: TChangeEnabledBtnsEvent;
    F_OnShowRaskopInfo: TShowRaskopInfoEvent;
    procedure AttachCtrlsAndEvents;
    procedure ChangeTadr;
    procedure BuildEnableForCtrls;
    procedure BuildEnableForBtns;
    procedure ShowRaskopInfo( _RaskopInfo: string = '');
    procedure SetTabIndex;
  private
    procedure AfterRaskopOpenHandler(DataSet: TDataSet);
    procedure AfterRaskopScrollHandler(DataSet: TDataSet);
    procedure FindIncorrectFieldHandler ( _ErrMsg: string; _IncorrectField: TRaskopField );
    procedure BeforeDataSetAbortHandler(DataSet: TDataSet);
    procedure AfterRaskopPostHandler(DataSet: TDataSet);
  public
    property Raskop: Tdm_NGRaskop read F_Raskop write F_Raskop;
    property IsShowTabs: boolean read F_IsShowTabs write F_IsShowTabs;
    property OnChangeEnabledBtns: TChangeEnabledBtnsEvent
      read F_OnChangeEnabledBtns write F_OnChangeEnabledBtns;
    property OnShowRaskopInfo: TShowRaskopInfoEvent read F_OnShowRaskopInfo
      write F_OnShowRaskopInfo;
    procedure Init;
    procedure PostRaskop;
    procedure CancelRaskop;
    procedure CopyRaskop;
    function DeleteRaskop: boolean;
    procedure AddRaskop;
    function IsInsertOrEditMode: boolean;
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

uses HelpFunctions, ServiceFuncUnit;

{ Tframe_Raskop }

procedure Tframe_Raskop.AfterRaskopOpenHandler(DataSet: TDataSet);
var
  i : integer;
  _TabCap, _BMark, _RaskopInfo: string;
begin
  if F_IsShowTabs then
  begin
    tc_Raskops.Tabs.Clear;
    DataSet.DisableControls;
    _BMark := DataSet.Bookmark;
    try
      i := 1;
      DataSet.First;
      while not DataSet.Eof do
      begin
        if F_Raskop.IsCurrentRaskopIsEditOne then _TabCap := '<<N' + IntToStr( i ) +'>>'
        else _TabCap := 'N' + IntToStr( i );

        tc_Raskops.Tabs.AddObject( _TabCap, ptr( Ord( ttExist ) ) );
        inc( i );

        DataSet.Next;
      end;
    finally
      if DataSet.RecordCount > 0 then
        DataSet.Bookmark := _BMark;
      DataSet.EnableControls;
    end;
    SetTabIndex;
  end;

  _RaskopInfo := 'количество раскопок: ' + IntToStr( ds_Raskop.DataSet.RecordCount );
  ShowRaskopInfo( _RaskopInfo );

  BuildEnableForCtrls;
end;

procedure Tframe_Raskop.AttachCtrlsAndEvents;
begin
  ds_Raskop.DataSet := F_Raskop.dset_Raskop;
  ds_tadr.DataSet := F_Raskop.dset_tadr;
  ds_S_Ulic1.DataSet := F_Raskop.dset_S_Ulic1;
  ds_S_Ulic2.DataSet := F_Raskop.dset_S_Ulic2;
  ds_S_DopAdres.DataSet := F_Raskop.dset_S_DopAdres;
  ds_S_Brig_Act.DataSet := F_Raskop.dset_S_Brig_Act;
  ds_S_Brig_Blag.DataSet := F_Raskop.dset_S_Brig_Act;
  ds_S_Ogragd.DataSet := F_Raskop.dset_S_Ogragd;    
  ds_S_Mest.DataSet := F_Raskop.dset_S_Mest;

  F_Raskop.OnAfterRaskopOpen := AfterRaskopOpenHandler;
  F_Raskop.OnAfterRaskopScroll := AfterRaskopScrollHandler;
  F_Raskop.OnFindIncorrectField := FindIncorrectFieldHandler;
  F_Raskop.OnBeforeDataSetAbort := BeforeDataSetAbortHandler;
  F_Raskop.OnAfterRaskopPost := AfterRaskopPostHandler;
end;

procedure Tframe_Raskop.Init;
begin
  AttachCtrlsAndEvents;
end;

procedure Tframe_Raskop.CancelRaskop;
begin
  if ds_Raskop.DataSet.State in [dsEdit, dsInsert] then
    ds_Raskop.DataSet.Cancel;

  AfterRaskopOpenHandler( ds_Raskop.DataSet );
end;

function Tframe_Raskop.DeleteRaskop: boolean;
const
  MSG_TEXT =
    'При удалении данной раскопки будут также удалены ' + #13 +
    'и все соответствующие работы.' + #13 +
    'Вы уверены, что хотите удалить раскопку?';
begin
  Result := false;

  if ( integer(tc_Raskops.Tabs.Objects[ tc_Raskops.TabIndex ]) <> Ord( ttNew ) ) then
    if Application.MessageBox( MSG_TEXT, 'Внимание', MB_YESNO + MB_ICONQUESTION ) = ID_YES then
    begin
      ds_Raskop.DataSet.Delete;
      Result := true;
    end;
end;

procedure Tframe_Raskop.PostRaskop;
begin
  if ds_Raskop.DataSet.State in [dsEdit, dsInsert] then
    ds_Raskop.DataSet.Post;
end;

procedure Tframe_Raskop.AddRaskop;
begin
  ds_Raskop.DataSet.Append;
  if F_IsShowTabs then
  begin
    tc_Raskops.Tabs.AddObject( '<Новый>', ptr( Ord( ttNew ) ) );
    tc_Raskops.TabIndex := tc_Raskops.Tabs.Count - 1;
  end;
end;

procedure Tframe_Raskop.ChangeTadr;
  procedure _ShowCtrl( _ul2, _house, _dop_adr: boolean );
  begin
    dbl_S_Ulic2.Visible := _ul2;
    lbl_S_Ulic2.Visible := _ul2;

    ed_HouseNum.Visible := _house;
    lbl_HouseNum.Visible := _house;

    dbl_S_DopAdres.Visible := _dop_adr;
    lbl_S_DopAdres.Visible := _dop_adr;
  end;
begin
  case ds_Raskop.DataSet.FieldByName( 'UL_KOD' ).AsInteger of
    0: //Улица, номер дома
      begin
        _ShowCtrl( false, true, false );
        ed_HouseNum.DataSource := ds_Raskop;
      end;
    1: //Перекресток
      begin
        _ShowCtrl( true, false, false );
        ed_HouseNum.DataSource := nil;

        FixDBLValue( StrToInt( trim( ds_Raskop.DataSet.FieldByName( 'ID_UL2' ).AsString ) ),
          dbl_S_Ulic2 );
      end;
    2: //Местность
      begin
        _ShowCtrl( false, false, true );
        ed_HouseNum.DataSource := nil;
      end;
  end;
end;

procedure Tframe_Raskop.dbl_tadrChange(Sender: TObject);
begin
  case ds_Raskop.DataSet.FieldByName( 'UL_KOD' ).AsInteger of
    0: ds_Raskop.DataSet.FieldByName( 'ID_UL2' ).AsString := '';
    1: ds_Raskop.DataSet.FieldByName( 'ID_UL2' ).AsString := '-1';
  end;
  ds_Raskop.DataSet.FieldByName( 'ID_DOPADRES' ).AsInteger := -1;

  ChangeTadr;
end;

procedure Tframe_Raskop.AfterRaskopScrollHandler(DataSet: TDataSet);
begin
  ChangeTadr;
  BuildEnableForCtrls;
  BuildEnableForBtns;
end;

procedure Tframe_Raskop.dbl_S_Ulic2Change(Sender: TObject);
begin
  if ( ds_Raskop.DataSet.FieldByName( 'UL_KOD' ).AsInteger = 1 ) and
    ( ds_Raskop.DataSet.State in [ dsEdit, dsInsert ] )
  then
    ds_Raskop.DataSet.FieldByName( 'ID_UL2' ).AsString := ds_S_Ulic2.DataSet.FieldByName( 'ID' ).AsString;
end;

constructor Tframe_Raskop.Create(AOwner: TComponent);
begin
  inherited Create( AOwner );
  F_Raskop := nil;
  F_IsShowTabs := true;  
end;

procedure Tframe_Raskop.tc_RaskopsChange(Sender: TObject);
begin
  ds_Raskop.DataSet.RecNo := tc_Raskops.TabIndex + 1;
  ShowRaskopInfo;
end;

procedure Tframe_Raskop.SetTabIndex;
begin
  if F_IsShowTabs then
  begin
    if ds_Raskop.DataSet.RecordCount > 0 then
      tc_Raskops.TabIndex := ds_Raskop.DataSet.RecNo - 1
    else
      tc_Raskops.TabIndex := 0;
  end;
end;

procedure Tframe_Raskop.BuildEnableForCtrls;
var
  _en: boolean;
begin
  mem_NeedWorks.ReadOnly := not F_Raskop.IsCanEditCurrentRaskop;
  _en := F_Raskop.IsCanEditCurrentRaskop;

  dbl_tadr.Enabled := _en;
  dbl_S_Ulic1.Enabled := _en;
  dbl_S_Ulic2.Enabled := _en;
  dbl_S_DopAdres.Enabled := _en;
  dbl_S_Brig_Act.Enabled := _en;
  dbl_S_Mest.Enabled := _en;
  dbl_S_Ogragd.Enabled := _en;
  dbl_S_Brig_Blag.Enabled := _en;

  ed_HouseNum.Enabled := _en;
  ed_Dop_Adr.Enabled := _en;
  ed_Peredano.Enabled := _en;
  te_Dt_Act.Enabled := _en;
  de_Dt_Act.Enabled := _en;

//   ((tc_Raskops.TabIndex >0) and _en)
end;

procedure Tframe_Raskop.BuildEnableForBtns;
var
  _EnBtns: TEnabledBtns;
  _IsChanging: boolean;
begin
  _IsChanging := ( ds_Raskop.DataSet.State in [dsEdit, dsInsert] );


  _EnBtns.EnabledAdd := F_Raskop.IsCanAddNewRaskop;
  _EnBtns.EnabledCopy := F_Raskop.IsCanAddNewRaskop and ( ds_Raskop.DataSet.RecordCount > 0 );
  _EnBtns.EnabledPost := F_Raskop.IsCanEditCurrentRaskop and _IsChanging;
  _EnBtns.EnabledDelete := F_Raskop.IsCanDelCurrentRaskop and ( not _IsChanging );

  if Assigned( F_OnChangeEnabledBtns ) then
    F_OnChangeEnabledBtns( _EnBtns );
end;

procedure Tframe_Raskop.ds_RaskopStateChange(Sender: TObject);
begin
  BuildEnableForBtns;
end;

procedure Tframe_Raskop.dbl_S_Ulic2DropDown(Sender: TObject);
begin
  if not(ds_Raskop.DataSet.State in [dsInsert, dsEdit]) then
    ds_Raskop.DataSet.Edit;
end;

procedure Tframe_Raskop.FindIncorrectFieldHandler(_ErrMsg: string;
  _IncorrectField: TRaskopField);
begin
  case _IncorrectField of
    rfUlKod: dbl_tadr.SetFocus;
    rfUl1: dbl_S_Ulic1.SetFocus;
    rfUl2: dbl_S_Ulic2.SetFocus;
    rfHouse: ed_HouseNum.SetFocus;
  end;

  Application.MessageBox( PChar( _ErrMsg ), 'Внимание', MB_OK + MB_ICONWARNING );
end;

procedure Tframe_Raskop.tc_RaskopsChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if ds_Raskop.DataSet.State in [dsInsert, dsEdit] then
    if Application.MessageBox( 'Сохранить внесенные изменения?', 'Внимание',
      MB_YESNO + MB_ICONQUESTION ) = ID_NO
    then
    begin
      ds_Raskop.DataSet.Cancel;

      if ( tc_Raskops.Tabs.Count > 0 ) and
      ( TTabType(tc_Raskops.Tabs.Objects[ tc_Raskops.Tabs.Count - 1 ]) = ttNew )
      then
        tc_Raskops.Tabs.Delete( tc_Raskops.Tabs.Count - 1 );
    end;
end;

procedure Tframe_Raskop.BeforeDataSetAbortHandler(DataSet: TDataSet);
begin
  SetTabIndex;
end;

function Tframe_Raskop.IsInsertOrEditMode: boolean;
begin
  Result := ( ds_Raskop.DataSet.State in [dsInsert, dsEdit] );
end;

procedure Tframe_Raskop.AfterRaskopPostHandler(DataSet: TDataSet);
begin
  BuildEnableForCtrls;
  BuildEnableForBtns;
end;

procedure Tframe_Raskop.ShowRaskopInfo(_RaskopInfo: string);
begin
  if Assigned( F_OnShowRaskopInfo ) then
    F_OnShowRaskopInfo( _RaskopInfo );
end;

procedure Tframe_Raskop.CopyRaskop;
begin
  F_Raskop.CopyRaskop;
  if F_IsShowTabs then
  begin
    tc_Raskops.Tabs.AddObject( '<Новый>', ptr( Ord( ttNew ) ) );
    tc_Raskops.TabIndex := tc_Raskops.Tabs.Count - 1;
  end;
end;

procedure Tframe_Raskop.dbl_S_MestChange(Sender: TObject);
begin
  ShowRaskopInfo;
end;

procedure Tframe_Raskop.dbl_S_OgragdChange(Sender: TObject);
var _s, _full : string;
begin
//
  _full := mem_Ogragd.Field.AsString;
  if trim( _full ) <> '' then _s := ', ' else _s := '';
  try
  mem_Ogragd.DataSource.DataSet.Edit;
  mem_Ogragd.Field.AsString := _full + _s + trim( dbl_S_Ogragd.Text );
  mem_Ogragd.DataSource.DataSet.Post;
  except
    on E:Exception do ShowErr(handle,'Tframe_Raskop.dbl_S_OgragdChange :: ',E);
  end;
end;

end.
