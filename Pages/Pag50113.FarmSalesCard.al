page 50113 "Farm Sales Card"
{
    ApplicationArea = All;
    Caption = 'Farm Sales Card';
    PageType = Card;
    SourceTable = "Farm Sales";
    
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
                field("Name "; Rec."Name ")
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field("Crop Name"; Rec."Crop Name")
                {
                    ToolTip = 'Specifies the value of the Crop Name field.', Comment = '%';
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.', Comment = '%';
                }
                field("Price per Unit"; Rec."Price per Unit")
                {
                    ToolTip = 'Specifies the value of the Price per Unit field.', Comment = '%';
                }
                field(Unit; Rec.Unit)
                {
                    ToolTip = 'Specifies the value of the Unit field.', Comment = '%';
                }
                field(series; Rec.series)
                {
                    ToolTip = 'Specifies the value of the series field.', Comment = '%';
                }
                field(" Average Price"; Rec." Average Price")
                {
                    ToolTip = 'Specifies the value of the  Average Price field.', Comment = '%';
                }
                field("Sub Total"; Rec."Sub Total")
                {
                    ToolTip = 'Specifies the value of the Sub Total field.', Comment = '%';
                }
                field("Total AMt"; Rec."Total AMt")
                {
                    ToolTip = 'Specifies the value of the Total AMt field.', Comment = '%';
                }
                field(Cat;Rec.Cat)
                {  
                    ToolTip = 'Specifies the value of the Cat field.', Comment = '%';
                }
                field(indentation;Rec.indentation)
                {
                    ToolTip = 'Specifies the value of the indentation field.', Comment = '%';
                }
            }
        }
    }
}
