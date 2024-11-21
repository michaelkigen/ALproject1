query 50103 "purchased Api"
{
    APIGroup = 'custom';
    APIPublisher = 'purchase';
    APIVersion = 'v1.0';
    EntityName = 'purch';
    EntitySetName = 'purchases';
    QueryType = API;

    elements
    {
        dataitem(purchaseHeader; "Purchase Header")
        {
            column(systemId; SystemId)
            {
            }
            column(currencyCode; "Currency Code")
            {
            }
            column(invoice; Invoice)
            {
            }
            column(documentDate; "Document Date")
            {
            }
            dataitem(SL; "Sales Header")
            {
                DataItemLink = "No." = purchaseHeader."No.";

                SqlJoinType = LeftOuterJoin;
                column("area"; "Area")
                {
                }
                column(dueDate; "Due Date")
                {
                }
                column(icStatus; "IC Status")
                {
                }
            }
        }
    }

}
