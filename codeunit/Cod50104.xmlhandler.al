codeunit 50104 "xml handler"
{
    procedure xmlDoc()
    var
        customer: Record Customer;
        fieldcap: Text;

        custxmldoc: XmlDocument;
        xmlDecl: XmlDeclaration;
        rootNode: XmlElement;
        parentNode: XmlElement;
        childnode: XmlElement;
        xmltxt: XmlText;
        tempblob: Codeunit "Temp Blob";
        outsrm: OutStream;
        instrm: InStream;
        fileName: Text;
    begin
        custxmldoc := XmlDocument.Create();
        xmlDecl := XmlDeclaration.Create('1.0', 'UTF-8', '');
        custxmldoc.SetDeclaration(xmlDecl);
        rootNode := XmlElement.Create('table');

        if customer.FindSet() then
            repeat
                parentNode := XmlElement.Create('Customer');
                rootNode.Add(parentNode);
                // id
                fieldcap := customer.FieldCaption("No.");
                childnode := XmlElement.Create(fieldcap);
                parentNode.Add(childnode);
                xmltxt := XmlText.Create(customer."No.");
                // Name
                fieldcap := customer.FieldCaption(Name);
                childnode := XmlElement.Create(fieldcap);
                parentNode.Add(childnode);
                xmltxt := XmlText.Create(customer.Name);
                // Contact
                fieldcap := customer.FieldCaption(Contact);
                childnode := XmlElement.Create(fieldcap);
                parentNode.Add(childnode);
                xmltxt := XmlText.Create(customer.Contact);
                // Netchange
                fieldcap := customer.FieldCaption("Net Change");
                childnode := XmlElement.Create(fieldcap);
                parentNode.Add(childnode);
                xmltxt := XmlText.Create(Format(customer."Net Change"));


            until customer.Next() = 0;
        fileName := 'Cust';
        tempblob.CreateOutStream(outsrm);
        custxmldoc.WriteTo(outsrm);
        tempblob.CreateInStream(instrm);
        if DownloadFromStream(instrm, 'Download xml doc', '', 'ALL files(*.*)|*.*', fileName) then
            Message('Downloaded');

    end;
}
