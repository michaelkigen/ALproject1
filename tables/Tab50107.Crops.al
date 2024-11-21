table 50107 Crops
{
    Caption = 'Crops';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; Name; Code[50])
        {
            Caption = 'Name';
        }
        field(2; Description; Text[1000])
        {
            Caption = 'Description';
        }
        field(3; Profile; Media)
        {
            Caption = 'Description';
        }
    }
    keys
    {
        key(PK; Name)
        {
            Clustered = true;
        }
    }
}
