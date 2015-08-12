unit DelBWorkForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  Tfrm_DelBWork = class(TForm)
    Label1: TLabel;
    chb_DelAssignedWorks: TCheckBox;
    chb_DelAssignedMats: TCheckBox;
    Bevel1: TBevel;
    btn_Yes: TBitBtn;
    btn_no: TBitBtn;
    procedure btn_noClick(Sender: TObject);
    procedure btn_YesClick(Sender: TObject);
  private
    F_IsDelAssignedWorks,
    F_IsDelAssignedMats: boolean;
  public
    property IsDelAssignedWorks: boolean read F_IsDelAssignedWorks;
    property IsDelAssignedMats: boolean read F_IsDelAssignedMats;
  end;


implementation

{$R *.dfm}

procedure Tfrm_DelBWork.btn_noClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_DelBWork.btn_YesClick(Sender: TObject);
begin
  F_IsDelAssignedWorks := chb_DelAssignedWorks.Checked;
  F_IsDelAssignedMats := chb_DelAssignedMats.Checked;

  ModalResult := mrOk;
end;

end.
