codeunit 50101 MediaHandlings
{
    procedure ProfilePics(SchoolTable: Record "School Table")
    var
        errmsg: Label 'The existing image will be changed';
        FromFIlter: Text;
        FromFile: Text;
        inStream: InStream;
    begin
        if SchoolTable.Picture.HasValue then begin
            if not Confirm(errmsg) then
                exit
        end;

        FromFIlter := 'All Files (*.*)|*.*';

        if UploadIntoStream('upload Picture', '', FromFIlter, FromFile, inStream) then begin
            SchoolTable.Picture.ImportStream(inStream, FromFile);
            SchoolTable.Modify(true);
        end;

    end;

    procedure MezaProfile(Meza: Record Meza)
    var
        errmsg: Label 'Itolewe?';
        FromFilter: Text;
        FromFIle: Text;
        instream: InStream;
    begin
        if meza."Profile pic".HasValue then begin
            if not Confirm(errmsg) then
                exit
        end;
        FromFilter := 'ALL Files (*.*)|*.*';
        if UploadIntoStream('upload', '', FromFilter, FromFIle, instream) then begin
            Meza."Profile pic".ImportStream(instream, FromFIle);
            Meza.Modify(true)
        end;
    end;

    procedure "Image Handler"(tables: Variant; pic: Text[50])
    var
    
        errmsg: Label 'The existing image will be changed';
        FromFIlter: Text;
        FromFile: Text;
        inStream: InStream;

    begin
          if not tables.IsRecord then
          begin
            Message('the parameter you enterd is not a record');
            exit
          end;
          
    end;

}
