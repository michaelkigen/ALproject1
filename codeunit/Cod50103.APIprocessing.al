codeunit 50103 "API processing"
{
    procedure ApiConnectVal(var ApiConnect: Record Crops)
    var
        Client: HttpClient;
        response: HttpResponseMessage;
        OutPut: Text;
        APIjsonObj: JsonObject;
        jsonTkn: JsonToken;
        Adrssjsonobj: JsonObject;
        adrssjsotkn: JsonToken;
        result: Text;

    begin
        if Client.Get('http://localhost:7048/BC210/api/migom/custom/v1.0/elon/' + Format(ApiConnect.SystemId), response) then
            response.Content().ReadAs(OutPut)
        else
            Error('No data of such record present');
        APIjsonObj.ReadFrom(OutPut);
        APIjsonObj.Get('name', jsonTkn);
        ApiConnect.Name := jsonTkn.AsValue().AsText();
        APIjsonObj.Get('Description', jsonTkn);
        ApiConnect.Description := jsonTkn.AsValue().AsText();
        

        end;



  
    
}
