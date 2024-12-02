table 50103 "Chemelet Family"
{
    Caption = 'Chemelet Family';
    DataClassification = ToBeClassified;

    fields
    {

        field(10; Id; Code[50])
        {
            Caption = 'Id';
            Editable = false;

        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';

        }
        field(21; email; Code[50])
        {
            Caption = 'Email';

        //     trigger OnValidate()
        //     var

        //         Regex: Codeunit Regex;
        //         IsMatch: Boolean;
        //         pattern: Text[100];
        //         ErrorMessage: Label 'The email %1 entered is not a valid email address.';
        //     begin
        //         pattern := '^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
        //         IsMatch := Regex.IsMatch(Email, pattern);

        //         if not IsMatch then
        //             Error(StrSubstNo(ErrorMessage, Email));

        //     end;

        }
        field(22; Phone; Code[50])
        {
            Caption = 'phone no.';

        }
        
        field(30; Age; Integer)
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
        field(40; Gender; enum Gander)
        {
            Caption = 'Gender';
        }
        field(50; "Serial No"; Code[50])
        {
            Caption = 'Serial No';
            TableRelation = "No. series";
        }
        field(60; State; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(70; Picture; Media)
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