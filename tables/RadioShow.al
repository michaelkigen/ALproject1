table 50100 "Radio Show"
{

    fields
    {

        field(1; "No"; Code[20]) {
            Caption = 'Number';
         }
        field(10; "Radio show type"; Code[20]) { }
        field(20; "Name"; Text[20]) { }
        field(40; "Run time"; Duration) { }
        field(50; "Host code"; Code[20]) { }
        field(60; "Average listeners"; Decimal) { }
        field(100; "Audience"; Decimal) { }
        field(110; "Average"; Decimal) { }
        field(120; "Advertising revenue"; Decimal) { }
        field(130; "Royalty cost"; Decimal) { }
    }
}