page 50111 SchoolCardPart
{
    ApplicationArea = All;
    Caption = 'SchoolCardPart';
    PageType = CardPart;
    SourceTable = "School Table";
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(Picture; Rec.Picture)
                {
                    ToolTip = 'Specifies the value of the Picture field.', Comment = '%';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.', Comment = '%';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.', Comment = '%';
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.', Comment = '%';
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
                Caption ='Upload';
                Image = Import;
                ApplicationArea = all;
                
                trigger OnAction()
                var
                    MediaHandlings: Codeunit MediaHandlings;
                begin
                    MediaHandlings.ProfilePics(Rec);
                end;
            }
        }
    }
}
