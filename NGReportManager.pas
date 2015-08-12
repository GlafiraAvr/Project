unit NGReportManager;

interface

uses NGBaseReport;

type
  TNGReportName=(rnWWater, rnSvodVed2, rnSvodVed21,rnSvodVed3, rnSvodVed2Alien, rnSearchAdres, rnUtechkiZaPeriod,
                  rnTrudoZatrat, rnMatUse, rnSvodkaSES, rnOtlRep,   rnSvodPlanWorks,
                  rnDiskonSvod);

  TNGReportManager=class
  public
    function CreateReport(AReportName: TNGReportName): TNGBaseReport;
    procedure ShowReport(AReportName: TNGReportName);
  end;

implementation

uses NGReports;

function TNGReportManager.CreateReport(
  AReportName: TNGReportName): TNGBaseReport;
begin
  case AReportName of
    rnWWater:           Result := TWWater.Create;               //������ ��������� ��� ����
    rnSvodVed2:         Result := TSvodVed2.Create;             //������� ��������� �2
    rnSvodVed21:        Result := TSvodVed21.Create;            //������� ��������� �2_1
    rnSvodVed3:         Result := TSvodVed3.Create;             //������� ��������� �3
    rnSvodVed2Alien:    Result := TSvodVed2Alien.Create;        //������� ��������� �2(�����)
    rnSearchAdres:      Result := TSearchAdres.Create;          //����� ������� ������ ������������� ���-��
    rnUtechkiZaPeriod:  Result := TUtechkiZaPeriod.Create;      //������ ������ �� ������
    rnTrudoZatrat:      Result := TTrudoZatrat.Create;          //������ �����������
    rnMatUse:           Result := TMatUse.Create;               //������ �������������� ����������
    rnSvodkaSES:        Result := TSvodkaSES.Create;            //������ � ���
    rnOtlRep:           Result := TOtlRep.Create;               //������ ����������
    rnSvodPlanWorks:    REsult := TSvodPlanWorks.Create;        //�������� ��������������� �����
    rnDiskonSvod:       Result := TDiskonSvod.Create;           //������ ��������� �� ������
  end;
end;

procedure TNGReportManager.ShowReport(AReportName: TNGReportName);
var
  IsExecuteOk: boolean;
  report: TNGBaseReport;
begin
  report:=CreateReport(AReportName);
  try
    repeat
      IsExecuteOk:=report.Execute;
    until not IsExecuteOk;
  finally
    report.Free;
  end;
end;

end.
