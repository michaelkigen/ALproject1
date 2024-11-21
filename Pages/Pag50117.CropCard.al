page 50117 "Crop Card"
{
    ApplicationArea = All;
    Caption = 'Crop Card';
    PageType = Card;
    SourceTable = Crops;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
            }
        }
        area(FactBoxes)
        {
            part(Profile; "crop Card Part")
            {
                SubPageLink = Name = field(Name);
            }
        }
    }
}
