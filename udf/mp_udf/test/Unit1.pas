unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//function GetQinM3(AMatPipe:PChar; AIB_Date:PISC_QUAD; var ADiam:integer):double; cdecl; external 'QShevelev.dll';

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  s: string;
  diam: integer;
  dt: TDateTime;
  res: double;
begin
  dt:=StrToDateTime('06.09.2006 09:00:00');
  diam:=30;
 // res:=GetQinM3('—“¿À‹', dt, diam);

  Caption:=FloatToStr(res);
end;

end.
