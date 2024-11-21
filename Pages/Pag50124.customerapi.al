page 50124 "customer api"
{
    APIGroup = 'custom';
    APIPublisher = 'mike';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'customerApi';
    DelayedInsert = true;
    EntityName = 'customer';
    EntitySetName = 'customers';
    PageType = API;
    SourceTable = Customer;
    ODataKeyFields = SystemId;
    Extensible = false;
    
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
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(amount; Rec.Amount)
                {
                    Caption = 'Amount';
                }
                field(balance; Rec.Balance)
                {
                    Caption = 'Balance';
                }
                field(netChange; Rec."Net Change")
                {
                    Caption = 'Net Change';
                }
                field(currencyFilter; Rec."Currency Filter")
                {
                    Caption = 'Currency Filter';
                }
                field(dateFilter; Rec."Date Filter")
                {
                    Caption = 'Date Filter';
                }
                field(globalDimension1Filter; Rec."Global Dimension 1 Filter")
                {
                    Caption = 'Global Dimension 1 Filter';
                }
                field(globalDimension2Filter; Rec."Global Dimension 2 Filter")
                {
                    Caption = 'Global Dimension 2 Filter';
                }
                field(shipToFilter; Rec."Ship-to Filter")
                {
                    Caption = 'Ship-to Filter';
                }
            }
        }
    }
}
