page 50126 "Familia list"
{
    ApplicationArea = All;
    Caption = 'Familia list';
    PageType = List;
    SourceTable = familia;
    UsageCategory = Lists;
    CardPageId = "Familia Card";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                IndentationColumn = rec.indent;
                // IndentationControls = Name;
                ShowAsTree = true;
                TreeInitialState =ExpandAll;
               
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                    Style = Strong;
                    StyleExpr = valid;
                }
                field(id;Rec.id)
                {
                     ToolTip = 'Specifies the value of the id field.', Comment = '%';
                }
                field(age; Rec.age)
                {
                    ToolTip = 'Specifies the value of the age field.', Comment = '%';
                }
                field("height in cm"; Rec."height in cm")
                {
                    ToolTip = 'Specifies the value of the height in cm field.', Comment = '%';
                }
                field(role; Rec.role)
                {
                    ToolTip = 'Specifies the value of the role field.', Comment = '%';
                }
                field(gender; Rec.gender)
                {
                    ToolTip = 'Specifies the value of the gender field.', Comment = '%';
                }
                field(indent;Rec.indent)
                {
                    ToolTip = 'Specifies the value of the indent field.', Comment = '%';
                    // Visible = false;
                }
            }
        }
    }
trigger OnAfterGetRecord()
var
    myInt: Integer;
begin
    valid := Rec.indent = 0 ;
end;

    var
    valid : Boolean;
}
