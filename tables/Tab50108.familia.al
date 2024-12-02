table 50108 familia
{
    Caption = 'familia';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;id;Code[50])
        {
            Caption ='Id';
            Editable =false;
        }
        field(10; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(20; age; Integer)
        {
            Caption = 'age';
        }
        field(30; "height in cm"; Decimal)
        {
            Caption = 'height in cm';
        }
        field(40; role; enum role)
        {
            Caption = 'role';
        }
        field(50; gender; Enum Gander)
        {
            Caption = 'gender';
        }
        
        field(80; pictures; MediaSet)
        {
            Caption = 'profile picture';
        }
        field(60; indent; Integer)
        {
            Caption = 'indent';
        }
        field(70;Series;Code[50])
        {

        }
    }
    keys
    {
        key(PK; id)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
       NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if Rec.id = ''then
        NoSeriesMgt.InitSeries('AM-',xRec.Series,0D,id,Series);
    end;
}
