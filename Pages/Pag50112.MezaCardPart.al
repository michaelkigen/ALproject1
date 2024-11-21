page 50112 "Meza Card Part"
{
    ApplicationArea = All;
    Caption = 'Meza Card Part';
    PageType = CardPart;
    SourceTable = Meza;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Profile pic"; Rec."Profile pic")
                {
                    ToolTip = 'Specifies the value of the Data field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Upload pic")
            {
                Caption ='Upload Pic';
                Image = Import;
            trigger OnAction()
            var
                MediaHandlings: Codeunit MediaHandlings;
            begin
                MediaHandlings.MezaProfile(Rec);
            end;
            }
        }
    }
}
