page 50123 CropsAPI
{
    APIGroup = 'custom';
    APIPublisher = 'migom';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'cropsAPI';
    DelayedInsert = true;
    EntityName = 'mike';
    EntitySetName = 'elon';
    PageType = API;
    SourceTable = Crops;
    ODataKeyFields = SystemId;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
            }
        }
    }
}
