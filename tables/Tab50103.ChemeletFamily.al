table 50103 "Chemelet Family"
{
    Caption = 'Chemelet Family';
    DataClassification = ToBeClassified;

    fields
    {

        field(1; Id; Code[50])
        {
            Caption = 'Id';
            Editable = false;

        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';

        }
        field(3; Age; Integer)
        {
            Caption = 'Age';
            trigger OnValidate()
            var
                Opps: Codeunit Opps;
            begin
                State := Opps.CheckStateName(Rec);
                Rec.Modify(true)
            end;
        }
        field(4; Gender; enum Gander)
        {
            Caption = 'Gender';
        }
        field(5; "Serial No"; Code[50])
        {
            Caption = 'Serial No';
            TableRelation = "No. series";
        }
        field(6; State; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(7; Picture; Media)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Id, Name)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if Rec.Id = '' then
            NoSeriesMgt.InitSeries('CHMLT', xRec."Serial No", 0D, Id, "Serial No");
    end;

    

}