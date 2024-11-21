page 50104 "School List"
{
    ApplicationArea = All;
    Caption = 'School List';
    PageType = List;
    SourceTable = "School Table";
    UsageCategory = Lists;
    CardPageId = "School Card";
    
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
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ToolTip = 'Specifies the value of the Last Name field.', Comment = '%';
                }
                field("Adm No"; Rec."Adm No")
                {
                    ToolTip = 'Specifies the value of the ADM No field.', Comment = '%';
                }
                field(Age; Rec.Age)
                {
                    ToolTip = 'Specifies the value of the Age field.', Comment = '%';
                }
                field(Married; Rec.Married)
                {
                    ToolTip = 'Specifies the value of the Married field.', Comment = '%';
                }
                field(state;Rec.state)
                {
                    
                }
            }
        }
    }
}
