unit EditWorkForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, StdCtrls, Buttons, Mask, DBCtrls, DB, WorkDM, ExtCtrls,
  AddRaskopForm;

type
  Tfrm_EditWork = class(TForm)
    dbl_place: TRxDBLookupCombo;
    dbl_work: TRxDBLookupCombo;
    dbl_killclog: TRxDBLookupCombo;
    dbl_pump: TRxDBLookupCombo;
    dbl_pes: TRxDBLookupCombo;
    dbl_diam: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ed_Kolwork: TDBEdit;
    Label7: TLabel;
    btn_ok: TBitBtn;
    btn_exit: TBitBtn;
    ds_place: TDataSource;
    ds_work: TDataSource;
    ds_killclog: TDataSource;
    ds_pump: TDataSource;
    ds_pes: TDataSource;
    ds_diam: TDataSource;
    ds_main: TDataSource;
    Bevel1: TBevel;
    Label9: TLabel;
    dbt_Trudozatrat: TDBText;
    btn_AddRaskop: TBitBtn;
    pnl_Raskop: TPanel;
    dbl_raskop: TRxDBLookupCombo;
    Label8: TLabel;
    ds_Raskop: TDataSource;
    procedure btn_exitClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure dbl_workChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_AddRaskopClick(Sender: TObject);
    procedure dbl_placeChange(Sender: TObject);
  private
    F_Work: Tdm_Work;
    F_AddRaskopForm: Tfrm_AddRaskop;
    F_WorkTypeID: integer;
    procedure BuildCtrlVisible;
  public
    constructor Create( AOwner: TComponent; AWork: Tdm_Work );
    destructor Destroy; override;
  end;


implementation

{$R *.dfm}

uses AvrDBConst, NGRaskopDM;

procedure Tfrm_EditWork.btn_exitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_EditWork.btn_okClick(Sender: TObject);
var
  _ErrMsg: string;
  _ErrFieldOrd: integer;
begin
  if not F_Work.IsInputValuesCorrect( _ErrMsg, _ErrFieldOrd ) then
  begin
    case _ErrFieldOrd of
      Ord( wfPlace ): dbl_place.SetFocus;
      Ord( wfWork ): dbl_work.SetFocus;
    end;
    //
    Application.MessageBox( PChar( _ErrMsg ), 'Внимание', MB_OK + MB_ICONWARNING );

    exit;
  end;

  if ( F_WorkTypeID = Ord( tsc_swt_RASKOPKA ) ) and ( F_Work.Raskop.EditOneRaskopID < 1 ) then
  begin
    Application.MessageBox( 'Необходимо ввести информацию по раскопке!',
      'Внимание', MB_OK + MB_ICONWARNING );
    btn_AddRaskop.SetFocus;
    exit;
  end;

  if ( F_WorkTypeID = Ord( tsc_swt_BLAGOUSTR ) ) and ( trim( dbl_raskop.Text ) = '' ) then
  begin
    Application.MessageBox( 'Выберите раскопку!',
      'Внимание', MB_OK + MB_ICONWARNING );
    dbl_raskop.SetFocus;
    exit;
  end;


  ModalResult := mrOk;
end;

procedure Tfrm_EditWork.BuildCtrlVisible;
var
  _IsRaskop, _IsBlag: boolean;
begin
  _IsRaskop := ( F_WorkTypeID = Ord( tsc_swt_RASKOPKA ) );
  _IsBlag := ( F_WorkTypeID = Ord( tsc_swt_BLAGOUSTR ) ) and (ds_Raskop.DataSet<> nil);

  btn_AddRaskop.Visible := _IsRaskop;
  dbl_place.Enabled := not (_IsRaskop and ( ds_Main.DataSet.State <> dsInsert ) );
  dbl_work.Enabled := not (_IsRaskop and ( ds_Main.DataSet.State <> dsInsert ) );

  pnl_Raskop.Visible := _IsBlag;

if (ds_Raskop.DataSet<> nil)  then
begin
  if _IsBlag then
      F_work.Raskop.SetIsVisibleRestoredRaskop( false )
  else
    F_work.Raskop.SetIsVisibleRestoredRaskop( true );

  dbl_raskop.DisplayValue := ds_raskop.DataSet.FieldByName( 'clc_RASKOP_INFO' ).AsString;
 end;
end;

constructor Tfrm_EditWork.Create(AOwner: TComponent; AWork: Tdm_Work);
begin
  inherited Create( AOwner );
  F_Work := AWork;
 if  F_Work.Raskop <>nil then
    F_AddRaskopForm := Tfrm_AddRaskop.Create( nil, F_Work.Raskop );
end;

procedure Tfrm_EditWork.dbl_workChange(Sender: TObject);
begin
  F_Work.SetTrudozatratForCurrentRec;

  F_WorkTypeID := F_Work.GetCurrentWorkTypeID;
  BuildCtrlVisible;
end;

procedure Tfrm_EditWork.FormShow(Sender: TObject);
begin
  F_WorkTypeID := F_Work.GetCurrentWorkTypeID;
  BuildCtrlVisible;
end;

procedure Tfrm_EditWork.btn_AddRaskopClick(Sender: TObject);
begin
  F_AddRaskopForm.ShowModal;
end;

destructor Tfrm_EditWork.Destroy;
begin
  F_AddRaskopForm.Free;
  inherited Destroy;
end;

procedure Tfrm_EditWork.dbl_placeChange(Sender: TObject);
begin
  ds_work.DataSet.Filtered:=false;
  if ds_place.DataSet.FieldByName('id').asinteger>0 then
  begin
     ds_work.DataSet.Filter:='ID_PLACE='+ds_place.DataSet.FieldByName('id').AsString;
     ds_work.DataSet.Filtered:=true;
  end;


end;

end.
