page 50110 "Chemelet Picture"
{
    ApplicationArea = All;
    Caption = ' Picture';
    PageType = CardPart;
    SourceTable = "Chemelet Family";

    layout
    {
        area(Content)
        {
            field(Picture; Rec.Picture)
            {
                ToolTip = 'Specifies the value of the Picture field.', Comment = '%';
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Import)
            {
                Caption = 'Import';
                Image = Import;
                ApplicationArea = all;
                trigger OnAction()
                var
                    Opps: Codeunit Opps;
                begin
                    Opps.ImportChemeletPicture(Rec);
                end;

            }
            action(Export)
            {
                Caption = 'export';
                Image = Export;
                ApplicationArea = all;
                trigger OnAction()
                var
                    Opps: Codeunit Opps;
                begin
                    Opps.Run();
                    Opps.ImportChemeletPicture(Rec);
                    
                end;

            }
            action(Delete){
              Caption = 'delete';
                Image = Delete;
                ApplicationArea = all;
                trigger OnAction()
                var
                    ChemeletFamily: Record  "Chemelet Family";
                begin
                    rec.TestField(Picture);
                    ChemeletFamily.Delete()
                end;  
            }
        }
    }

}
