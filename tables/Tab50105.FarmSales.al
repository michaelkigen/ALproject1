table 50105 "Farm Sales"
{
    Caption = 'Farm Sales';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; Id; Code[50])
        {
            Caption = 'Id';
            Editable = false;
        }
        field(11; indentation; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(20; "Name "; Text[50])
        {
            Caption = 'Name ';
            TableRelation = Farm;
            trigger OnValidate()
            var
                plant: Record Farm;
            begin
                if plant.Get("Name ") then
                    "Crop Name" := plant.Crop;
                "Name " := plant.Name;
            end;
        }
        field(21; "Crop Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(30; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(40; "Price per Unit"; Decimal)
        {
            Caption = 'Price per Unit';
        }
        field(50; Unit; Enum Units)
        {
            Caption = 'Unit';
        }
        field(60; series; code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(61; "VAT 1"; Decimal)
        {
            FieldClass = FlowFilter;

        }
        field(62; "VAT 2"; Decimal)
        {
            FieldClass = FlowFilter;

        }
        field(70; " Average Price"; Decimal)
        {

            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average(
                "Farm Sales"."Price per Unit"
                where("Crop Name" = field("Crop Name"))
            );

        }
        field(71; "Sub Total"; Decimal)
        {
            Editable = false;
        }
        field(80; "Total AMt"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum(
                "Farm Sales"."Sub Total"
            );
        }
        field(90; Cat; Text[50])
        {
            Editable = false;
        }
    }
    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }
    local procedure category(FS: Record "Farm Sales"):Text
    begin
        FS.Reset();
        FS.SetCurrentKey(Cat);
        FS.CalcFields("Total AMt");

        if "Total AMt" <= 1000000 then
            begin
                exit('Poor Sales')
            end;
        if "Total AMt" <= 2500000 then
        begin
            exit('Average Sales')
        end;
        if "Total AMt" <= 5000000 then
        begin
            exit('Intermediate Sales')
        end;
        if "Total AMt" <=10000000 then
        begin
            exit('excelent Sales')
        end
        else
         exit('Daaaayum')
      
    end;

    trigger OnInsert()
    var
        response : Text;
        NoSeriesMgt: Codeunit NoSeriesManagement;
        subtotal: Decimal;
        option: Enum category;
    begin
        response := category(Rec);
        if rec.Id = '' then
            NoSeriesMgt.InitSeries('SLS', xRec.series, 0D, id, series);
        subtotal := "Price per Unit" * Quantity;
        "Sub Total" := subtotal;
        Cat := response
    end;

    trigger OnModify()
    var

        subtotal: Decimal;
        response : Text;
    begin
        response := category(Rec);
        subtotal := "Price per Unit" * Quantity;
        "Sub Total" := subtotal;
        Cat := response;
    end;

}
