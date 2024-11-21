page 50125 "Familia Card"
{
    ApplicationArea = All;
    Caption = 'Familia Card';
    PageType = Card;
    SourceTable = familia;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field(id;Rec.id)
                {

                }
                
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
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
                field(gender;Rec.gender)
                {
                    ToolTip = 'Specifies the value of the gender field.', Comment = '%';
                }
                field(indent;Rec.indent)
                {
                    ToolTip = 'Specifies the value of the indent field.', Comment = '%';
                    
                }
            }
        }
    }
}
