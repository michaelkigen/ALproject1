page 50114 "Farm Sales List"
{
    ApplicationArea = All;
    Caption = 'Farm Sales List';
    PageType = List;
    SourceTable = "Farm Sales";
    UsageCategory = Lists;
    CardPageId ="Farm Sales Card";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                IndentationColumn = indent;
                
                // IndentationControls= "Name ";
                ShowAsTree = true;
                TreeInitialState = CollapseAll;
                field("Name "; Rec."Name ")
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                    Style=Strong;
                    StyleExpr=false;
                }
                field(Id; Rec.Id)
                {
                    ToolTip = 'Specifies the value of the Id field.', Comment = '%';
                }
                field(indentation;Rec.indentation)
                {
                     ToolTip = 'Specifies the value of the INDENTATION field.', Comment = '%';
                     Visible = false;
                     Style=Strong;
                    StyleExpr=false;
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
            }
        }
    }
    trigger OnAfterGetRecord()
   
    begin
        indent := rec.indentation ;
    end;
    var
    [InDataSet]
    indent: Integer;
}
