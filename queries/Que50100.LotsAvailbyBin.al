query 50100 "Lots Avail. by Bin"
{
    Caption = 'Lots Avail. by Bin';
    QueryType = Normal;
    
    elements
    {
        dataitem(ItemLedgerEntry; "Item Ledger Entry")
        {
            column(ItemNo; "Item No.")
            {
            }
            column(LotNo; "Lot No.")
            {
            }
            dataitem(Warehouse_Entry;"Warehouse Entry")
            { 
                DataItemLink = "Location Code"= ItemLedgerEntry."Location Code",
                                "Item No." = ItemLedgerEntry."Item No.",
                                "Lot No." = ItemLedgerEntry."Lot No.";
                SqlJoinType= LeftOuterJoin;
                                
                column(EntryNo; "Entry No.")
                {
                }
                column(BinCode; "Bin Code")
                {
                }
                column(LocationCode; "Location Code")
                {
                }
            }
        }
    }
}
