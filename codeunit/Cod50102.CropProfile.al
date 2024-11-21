codeunit 50102 "Crop Profile "
{
    procedure CropMedia(Crops: Record Crops)
    var
        errmsg: Label 'The file will be removed';
        fromFile: Text;
        fromFilter: Text;
        instrm: InStream;
    begin
        if Crops.Profile.HasValue then begin
            if not Confirm(errmsg) then
                exit
        end;
        fromFilter := 'ALL FILE (*.*)|*.*';
        if UploadIntoStream('upload','',fromFilter,fromFile,instrm) then begin
            Crops.Profile.ImportStream(instrm,fromFile);
            Crops.Modify(true);
        end;
    end;
}
