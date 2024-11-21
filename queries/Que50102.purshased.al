query 50102 "Purchased Sales. by user"
{
    elements
    {
        dataitem(purchases; "Purchase Header")
        {
            
            column(ReceivingNo; "Receiving No.")
            {
            }
            dataitem(sold ; "Sales Header")
            {
                DataItemLink ="No."=purchases."No.",
                              "Location Code" = purchases."Location Code";

                SqlJoinType = RightOuterJoin;
                column(DocumentDate; "Document Date")
                {
                }
                column(DocumentType; "Document Type")
                {
                }
                column(LocationCode; "Location Code")
                {
                }
                column(VATBaseDiscount; "VAT Base Discount %")
                {
                }

                column(SelltoAddress; "Sell-to Address")
                {
                }
                column(SelltoCustomerName; "Sell-to Customer Name")
                {
                }
                column(SelltoCity; "Sell-to City")
                {
                }
               
            }
        }
    }
}