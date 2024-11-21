table 50104 Dept
{
    Caption = 'Dept';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; id; Code[50])
        {
            Caption = 'id';
            Editable =false;
        }
        field(2; "Full Name"; Text[50])
        {
            Caption = 'Full Name';
            Editable =false;
        }
        field(3; Location; Text[50])
        {
            Caption = 'Location';
            
        }
        field(4; School; Text[50])
        {
            Caption = 'School';
            TableRelation = "School Table";

            trigger onValidate()
            var
                SchoolTable: Record "School Table";
            begin
                if SchoolTable.Get(School) then
                begin
                    "Full Name" := SchoolTable."First Name"+' '+SchoolTable."Last Name";
                end;
            end;
        }
        field(5; Serial; Code[50])
        {
            Caption = 'Serial';
            TableRelation = "No. Series";
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
        if Rec.id = '' then
        NoSeriesMgt.InitSeries('DPT',xRec.Serial,0D,id, Serial);
    end;
}
