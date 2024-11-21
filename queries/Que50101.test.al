query 50101 test
{
    Caption = 'test';
    QueryType = Normal;
    
    elements
    {
        dataitem(SH; "Sales Header")
        {
            column(Amount; Amount)
            {
            }
        
            column(DocumentType; "Document Type")
            {
            }
            column(DocumentDate; "Document Date")
            {
            }
            column(No; "No.")
            {
            }
            dataitem(customer ;"Cust. Ledger Entry" )
            {   
                // DataItemLink = "Currency Code" = SH."Currency Code";
                SqlJoinType =CrossJoin;
                
                column(CurrencyCode; "Currency Code")
                {
                }
                column(CustomerName; "Customer Name")
                {
                }
            }
        }
    }
    
}
