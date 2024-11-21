page 50107 "Chemelet Card"
{
    ApplicationArea = All;
    Caption = 'Chemelet Family';
    PageType = Card;
    SourceTable = "Chemelet Family";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';

                    NotBlank = true;
                }
                field(Age; Rec.Age)
                {
                    ToolTip = 'Specifies the value of the Age field.', Comment = '%';
                    ShowMandatory = true;
                }
                field(Gender; Rec.Gender)
                {
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field(State; Rec.State) { }
                
            }
        }
        area(FactBoxes)
        {
            part(Picture; "Chemelet Picture")
            {
                SubPageLink = Id = field(Id);
            }
            systempart(notes; Notes)
            {
                ApplicationArea = all;
            }
            systempart(links; Links)
            {
                ApplicationArea = all;
            }
        }
    }
}
