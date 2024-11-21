page 50105 "School Card"
{
    ApplicationArea = All;
    Caption = 'School Card';
    PageType = Card;
    SourceTable = "School Table";

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
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ToolTip = 'Specifies the value of the Last Name field.', Comment = '%';
                }
                
            }
            group("Personal Details")
            {
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
                field( name; Rec.name)
                {
                    ToolTip = 'Specifies the value of the Married field.', Comment = '%';
                }
                field(state;Rec.state)
                {
                    
                }
            }
        }
        area(FactBoxes)
        {
            part(Picture ; SchoolCardPart )
            {
                SubPageLink = id = field(id);
            }
        }
    }

}
