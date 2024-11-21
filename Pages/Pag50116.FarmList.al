page 50116 "Farm List"
{
    ApplicationArea = All;
    Caption = 'Farm List';
    PageType = List;
    SourceTable = Farm;
    UsageCategory = Lists;
    CardPageId="Farm Card";
    
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
                field("Size in (Ha)"; Rec."Size in (Ha)")
                {
                    ToolTip = 'Specifies the value of the Size in (Ha) field.', Comment = '%';
                }
                field(Crop; Rec.Crop)
                {
                    ToolTip = 'Specifies the value of the Crop field.', Comment = '%';
                }
                field("Crop Description"; Rec."Crop Description")
                {
                    ToolTip = 'Specifies the value of the Crop Description field.', Comment = '%';
                }
                field(serial; Rec.serial)
                {
                    ToolTip = 'Specifies the value of the serial field.', Comment = '%';
                }
            }
        }
    }
}
