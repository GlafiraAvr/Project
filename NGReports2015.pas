unit NGReports2015;

interface
uses Classes, Controls, NGBaseReport, FR_Class, Aligrid, DB, Graphics, SysUtils,
     FR_DSet, FrPreviewForm,
     DiskonOptForm,DiskondRepDModule;

type
 TDiskonSvod = class(TNGBaseReport)
 private
 f_dt_begin,F_dt_end:TDateTime;
   F_OptFrm: Tfrm_DiskonOpt;
   F_PreviewFrm: Tfrm_FrPreview;
    F_DM: Tdm_DiskondRep;
 public
   function Execute:boolean; override;
 protected
   procedure InitFields; override;
   procedure CreateForms; override;
   procedure DestroyForms; override;
   procedure PrepareFastReport; override;
 end;


implementation

  uses WaitProcessForm;

{ TDiskonSvod }

procedure TDiskonSvod.CreateForms;
begin

  F_optFrm:=Tfrm_DiskonOpt.Create(nil,f_Name);
  f_dm:= Tdm_DiskondRep.Create(nil);
  F_PreviewFrm:=F_PreviewFrm.Create(f_dm,F_dm.frReport);
  F_DM.frReport.Preview:=F_PreviewFrm.frPreview;
end;

procedure TDiskonSvod.DestroyForms;
begin
  inherited;

  f_dm.Free;
  F_optFrm.Free;

end;

function TDiskonSvod.Execute: boolean;
var WaitFrm:Tfrm_WaitProcess;
begin
result:=false;
if F_optFrm.ShowModal<>mrOk then exit;
WaitFrm:=Tfrm_WaitProcess.Create(nil);
try
 WaitFrm.Show;
 F_dt_begin:=F_optFrm.DateIn;
 F_dt_end:=f_OptFrm.DateOut;
 f_dm.dt_begin:=f_dt_begin;
 F_dm.dt_end:=F_Dt_end;

 if f_dm.Preparedsets then
 begin

      F_DM.PrepareDsets;

      PrintFastReport( F_DM.frReport );
      F_PreviewFrm.frOLEExcelExport.OpenExcelAfterExport := true;
      F_PreviewFrm.Align := alClient;
      F_PreviewFrm.ShowModal;
  result:=true;
 end;
finally
 WaitFrm.Close;
 WaitFrm.Free;
end;

end;

procedure TDiskonSvod.InitFields;
begin
  inherited;
  F_name:='Сводка отлючений за период';
  F_ReportFileName:='DisconRep.frf';

end;

procedure TDiskonSvod.PrepareFastReport;
begin
  inherited;
  frVariables['dt_begin']:=FormatdateTime('dd.mm.yyyy hh:mm',F_dt_begin);
  frVariables['dt_end']:=FormatdateTime('dd.mm.yyyy hh:mm',F_dt_end);
end;

end.
