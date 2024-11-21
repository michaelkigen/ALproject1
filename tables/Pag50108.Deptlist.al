page 50108 "Dept list"
{
    ApplicationArea = All;
    Caption = 'Dept list';
    PageType = List;
    SourceTable = Dept;
    UsageCategory = Lists;
    CardPageId = "Dept card";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
