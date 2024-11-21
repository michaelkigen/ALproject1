page 50120 "mytable list"
{
    ApplicationArea = All;
    Caption = 'mytable list';
    PageType = List;
    SourceTable = MyTable;
    UsageCategory = Lists;
    CardPageId = "mytable caed";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field("Total Amount"; Rec."Total Amount")
                {
                    ToolTip = 'Specifies the value of the Total Amount field.', Comment = '%';
                }
                field("Amount upper bound"; Rec."Amount upper bound")
                {
                    ToolTip = 'Specifies the value of the Amount upper bound field.', Comment = '%';
                }
                field("count"; Rec."count")
                {
                    ToolTip = 'Specifies the value of the count field.', Comment = '%';
                }
            }
        }
    }
}
