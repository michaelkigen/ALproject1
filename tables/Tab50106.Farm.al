table 50106 Farm
{
    Caption = 'Farm';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Id; Code[50])
        {
            Caption = 'Id';
            Editable = false;
        }
        field(2; Name; Code[50])
        {
            Caption = 'Name';

        }
        field(3; "Size in (Ha)"; Decimal)
        {
            Caption = 'Size in (Ha)';
        }
        field(4; Crop; Code[50])
        {
            Caption = 'Crop';
            TableRelation = Crops;
            trigger OnValidate()
            var
                Crops: Record Crops;
            begin
                if Crops.Get(Crop) then begin
                    "Crop Description" := Crops.Description;
                end;
            end;
        }
        field(5; "Crop Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(6; serial; Code[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        if rec.Id = '' then
            NoSeriesMgt.InitSeries('FRM', xRec.serial, 0D, Id, serial);
    end;
}
