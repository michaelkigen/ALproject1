table 50123 MyTable
{
    Caption = 'My Table';
    fields
    {
      

        field(2;"No."; Code[20])
        {
            Description = 'Serial number of the service';
        }

        field(3;"Date"; Date)
        {
            FieldClass = FlowFilter;
        }


        field(5;"Currency Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }

        field(6; "Total Amount"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)");
        }

        field(7; "Amount upper bound"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)"
            where (
                "Posting Date"= field(Date)
            )
            );
        
        }
        field(8; "count"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula =max ("Detailed Cust. Ledg. Entry"."Amount (LCY)"
            where (
                "Currency Code"= field("Currency Filter")
            )
            );
        
        }

    }
}