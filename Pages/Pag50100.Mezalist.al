page 50100 "Meza list"
{
    ApplicationArea = All;
    Caption = 'Meza list';
    PageType = List;
    SourceTable = Meza;
    UsageCategory = Lists;
    CardPageId = "Meza Card";
    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
                field("Time"; Rec."Time")
                {
                    ToolTip = 'Specifies the value of the Time field.', Comment = '%';
                }
                field(Age; Rec.Age)
                {
                    ToolTip = 'Specifies the value of the Age field.', Comment = '%';
                }
                field(First_Name;Rec.First_Name)
                {

                }
                field(Last_Name;Rec.Last_Name){
                    
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
            }
        }
    }
}
