unit AddBWorkForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EditBWorkForm, DB, StdCtrls, RxLookup, Buttons, ExtCtrls;

type
  Tfrm_AddBWork = class(Tfrm_EditBWork)
    chb_AddAssignedWorks: TCheckBox;
    chb_AddAssignedMats: TCheckBox;
    procedure btn_okClick(Sender: TObject);
  private
    F_IsAddAssignedWorks,
    F_IsAddAssignedMats: boolean;
  public
    property IsAddAssignedWorks: boolean read F_IsAddAssignedWorks;
    property IsAddAssignedMats: boolean read F_IsAddAssignedMats;
  end;


implementation

{$R *.dfm}

procedure Tfrm_AddBWork.btn_okClick(Sender: TObject);
begin
  inherited;
  F_IsAddAssignedWorks := chb_AddAssignedWorks.Checked;
  F_IsAddAssignedMats := chb_AddAssignedMats.Checked;
end;

end.
