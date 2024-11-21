page 50103 "Meza Card"
{
    ApplicationArea = All;
    Caption = 'Meza Card';
    PageType = Card;
    SourceTable = Meza;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field("Cash "; Rec."Cash ")
                {
                    ToolTip = 'Specifies the value of the Cash field.', Comment = '%';
                }
            }
            group("More info")
            {
                field("Time"; Rec."Time")
                {
                    ToolTip = 'Specifies the value of the Time field.', Comment = '%';
                }
                field(Age; Rec.Age)
                {
                    ToolTip = 'Specifies the value of the Age field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
                field(Form;Rec.Form)
                {
                    ToolTip = 'Specifies the value of the Form field.', Comment = '%';
                }
                field(student;Rec.student)
                {
                    
                }
                field(Last_Name;Rec.Last_Name)
                {

                }
                field(First_Name;Rec.First_Name)
                {

                }
                field("Full Name";Rec."Full Name"){}
            }
        }
        area(FactBoxes)
        {
            part("Profile pic";"Meza Card Part")
            {
                SubPageLink = No = field(No);
            }
        }
    }
}
