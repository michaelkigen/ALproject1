pageextension 50100 "customer extensions" extends "Customer Card"
{
    actions
    {
        addlast(processing)
        {
            action(json)
            {
                ApplicationArea = All;
                Caption = 'json';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Export;

                trigger OnAction()

                begin
                    jsonConvert(Rec);
                end;
            }
                      

        }
    }
    local procedure jsonConvert(Customer: Record Customer)
    var
        Custobj: JsonObject;
        custObjArr: JsonArray;
        locArr : JsonArray;
        locobj :JsonObject;
        ledgerentry: JsonObject;

        Custledgeentry: Record "Cust. Ledger Entry";

        TempBlob: Codeunit "Temp Blob";
        instrm: InStream;
        outstrm: OutStream;
        Record: Text;
        filname: Text;
    begin
        filname :='data';
        Clear(Custobj);
        Customer.CalcFields("Net Change");
        Custobj.Add('Customer No', Customer."No.");
        Custobj.Add('Customer Name', Customer.Name);
        Custobj.Add('Customer change', Customer."Net Change");
        Custobj.Add('Customer email', Customer."E-Mail");

        Custledgeentry.Reset();
        Custledgeentry.SetRange("Customer No.", Customer."No.");
        if Custledgeentry.FindSet() then
            repeat
                Clear(ledgerentry);
                Custledgeentry.CalcFields(Amount);
                ledgerentry.Add('Doc No', Custledgeentry."Document No.");
                ledgerentry.Add('Posting Dt', Custledgeentry."Posting Date");
                ledgerentry.Add('desc', Custledgeentry.Description);
                ledgerentry.Add('amount', Custledgeentry.Amount);
                custObjArr.Add(ledgerentry);
            until Custledgeentry.Next() = 0;
        Custobj.Add('ledger', custObjArr);
        
        locobj.Add('city', Customer.City);
        locobj.Add('adress 1', Customer.Address);
        locobj.Add('adress 2', Customer."Address 2");
        locobj.Add('region code', Customer."Country/Region Code");
        locobj.Add('postal code', Customer."Post Code");
        locArr.Add(locobj);
        Custobj.Add('locatons',locArr);

        TempBlob.CreateOutStream(outstrm);
        TempBlob.CreateInStream(instrm);
        Custobj.WriteTo(outstrm);
        instrm.ReadText(Record);

        DownloadFromStream(instrm, 'download json', '', 'ALL Files (*.*)|*.*', filname)

    end;
}
