page 50122 "Crop List Part"
{
    ApplicationArea = All;
    Caption = 'Crop List Part';
    PageType = ListPart;
    SourceTable = Crops;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Profile"; Rec."Profile")
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(upload)
            { 
                Caption= 'Upload';
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
