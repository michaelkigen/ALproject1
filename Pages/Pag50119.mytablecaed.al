page 50119 "mytable caed"
{
    ApplicationArea = All;
    Caption = 'mytable caed';
    PageType = Card;
    SourceTable = MyTable;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
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
