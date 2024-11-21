page 50109 "Dept card"
{
    ApplicationArea = All;
    Caption = 'Dept card';
    PageType = Card;
    SourceTable = Dept;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(id; Rec.id)
                {
                    ToolTip = 'Specifies the value of the id field.', Comment = '%';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field(Location; Rec.Location)
                {
                    ToolTip = 'Specifies the value of the Location field.', Comment = '%';
                }
                field(School; Rec.School)
                {
                    ToolTip = 'Specifies the value of the School field.', Comment = '%';
                }
            }
        }
    }
}
