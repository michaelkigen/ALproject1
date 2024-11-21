page 50106 "Chemelet List"
{
    ApplicationArea = All;
    Caption = 'Chemelet Family';
    PageType = List;
    SourceTable = "Chemelet Family";
    UsageCategory = Lists;
    CardPageId = "Chemelet Card";
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(Age; Rec.Age)
                {
                    ToolTip = 'Specifies the value of the Age field.', Comment = '%';
                }
                field(Gender; Rec.Gender)
                {
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
            }
        }
        

    }
    actions
    {
        area(Processing)
        {
            action(Counting)
            {
                ApplicationArea = all;
                image = NewSum;
                trigger OnAction()
                var
                    Opps: Codeunit Opps;
                begin
                    Opps.FindMethodTest();
                end;
            }
            action(Oldest)
            {
                ApplicationArea = all;
                image = NewSum;
                trigger OnAction()
                var
                    Opps: Codeunit Opps;
                begin
                    Opps.GetLenox();
                end;
            }
        }
    }
}
