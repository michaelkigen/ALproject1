table 50101 Meza
{
    Caption = 'Meza';
    DataClassification = ToBeClassified;


    fields
    {
        field(70; "Number series"; Code[20])
        {
            Caption = 'Number series';
            TableRelation = "No. Series";
        }
        field(10; No; Code[20])
        {
            Caption = 'No';
            Editable = false;
        }
        field(55; student; Code[50])
        {
            TableRelation = "School Table";
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                SchoolTable: Record "School Table";
            begin
                if SchoolTable.Get(student) then
                begin
                    First_Name := SchoolTable."First Name";
                    Last_Name := SchoolTable."Last Name";
                    "Full Name" := SchoolTable."Last Name" + ' ' + SchoolTable."First Name";
                end

            end;
        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(21; First_Name; Text[50])
        {
            Caption = 'First Name';
            Editable = false;
        }
        field(22; Last_Name; Text[50])
        {
            Caption = 'Last Name';

            Editable = false;
        }
        field(23; "Full Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(30; "Cash "; Decimal)
        {
            Caption = 'Cash ';
        }
        field(40; "Time"; Duration)
        {
            Caption = 'Time';
        }
        field(50; Age; Integer)
        {
            Caption = 'Age';
            FieldClass = FlowFilter;
        }
        field(60; Status; Boolean)
        {
            Caption = 'Status';
        }
        field(61; Form; Option)
        {
            OptionMembers = PDF,Docx,XLS,TXT;
            Caption = 'Data';
        }
        field(80; "Profile pic"; Media)
        {
            Caption = 'Data';
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;

    begin
        if rec.No = '' then
            NoSeriesMgt.InitSeries('MEZ', xRec."Number series", 0D, No, "Number series");
    end;
}
