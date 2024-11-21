page 50102 "RadioShow Card"
{
    ApplicationArea = All;
    Caption = 'RadioShow Card';
    PageType = Card;
    SourceTable = "Radio Show";
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the Number field.', Comment = '%';
                }
                field("Radio show type"; Rec."Radio show type")
                {
                    ToolTip = 'Specifies the value of the Radio show type field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field("Run time"; Rec."Run time")
                {
                    ToolTip = 'Specifies the value of the Run time field.', Comment = '%';
                }
                field("Host code"; Rec."Host code")
                {
                    ToolTip = 'Specifies the value of the Host code field.', Comment = '%';
                }
                field("Average listeners"; Rec."Average listeners")
                {
                    ToolTip = 'Specifies the value of the Average listeners field.', Comment = '%';
                }
            }
            group(stats)

            {
                Caption = 'Details';
                field(Audience; Rec.Audience)
                {
                    ToolTip = 'Specifies the value of the Audience field.', Comment = '%';
                }
                field("Average"; Rec."Average")
                {
                    ToolTip = 'Specifies the value of the Average field.', Comment = '%';
                }
                field("Advertising revenue"; Rec."Advertising revenue")
                {
                    ToolTip = 'Specifies the value of the Advertising revenue field.', Comment = '%';
                }
                field("Royalty cost"; Rec."Royalty cost")
                {
                    ToolTip = 'Specifies the value of the Royalty cost field.', Comment = '%';
                }
            }
        }
    }
}
