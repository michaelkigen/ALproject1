page 50121 "crop Card Part"
{
    ApplicationArea = All;
    Caption = 'crop Card Part';
    PageType = CardPart;
    SourceTable = Crops;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Profile"; Rec."Profile")
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.', Comment = '%';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Upload)
            {
                Caption ='Upload';
                Image = Import;
                trigger OnAction()
                var
                CropProfile: Codeunit "Crop Profile ";

                begin
                    CropProfile.CropMedia(Rec);
                end;
            }
        }
    }
}
