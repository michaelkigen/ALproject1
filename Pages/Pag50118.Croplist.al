page 50118 "Crop list"
{
    ApplicationArea = All;
    Caption = 'Crop list';
    PageType = List;
    SourceTable = Crops;
    UsageCategory = Lists;
    CardPageId = "Crop Card";
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
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
            part(profile;"Crop List Part")
            {
                SubPageLink = Name =field(Name);
            }
        }
    }
}
