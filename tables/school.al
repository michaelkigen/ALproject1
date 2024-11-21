table 50102 "School Table"
{
    LookupPageId = "School List";
    DrillDownPageId = "School List";

    fields
    {
        field(1; id; Code[20])
        {
            Caption = 'id';
            Editable = false;
        }

        field(2; "First Name"; Code[20])
        {
            Caption = 'First Name';
        }
        field(3; "Last Name"; Code[20])
        {
            Caption = 'Last Name';
        }
        field(4; "Adm No"; Code[20])
        {
            Caption = 'ADM No';
        }
        field(5; Age; Integer)
        {
            Caption = 'Age';
        }
        field(6; Married; Boolean)
        {
            Caption = 'Married';
        }
        field(7; name; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(8; ser; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(9; state; Enum Approvals)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(10; Picture; Media) { DataClassification = ToBeClassified; }

    }

    keys
    {
        key(PK; id)
        {
            Clustered = true;
        }
    }
    fieldgroups
    {

        fieldgroup(Bricks; id, "First Name", "Last Name") { }

    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if Rec.id = '' then
            NoSeriesMgt.InitSeries('sch', xRec.id, 0D, id, ser);
    end;

}