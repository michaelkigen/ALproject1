page 50127 "familia card part"
{
    ApplicationArea = All;
    Caption = 'familia card part';
    PageType = CardPart;
    SourceTable = familia;

    layout
    {
        area(Content)
        {
            group(General)
            {
                ShowCaption = false;

                field(pictures; Rec.pictures)
                {
                    ToolTip = 'Specifies the value of the profile picture field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(TakePhoto)
            {
                ApplicationArea = All;
                Caption = 'TakePhoto';
                Image = Camera;

                trigger OnAction()
                var
                    errmsg: Label 'camera was not found';
                begin
                    if Camera.IsAvailable() then
                        TakePic()
                    else
                        Error(errmsg);
                end;
            }
            action(upload)
            {
                ApplicationArea = All;
                Caption = 'upload';
                Image = Import;

                trigger OnAction()
                begin
                    MediaImport();
                end;
            }
            action(Export)
            {
                ApplicationArea = All;
                Caption = 'Export';
                Image = Export;

                trigger OnAction()
                var
                    TempBlob: Codeunit "Temp Blob";
                    fileName: Text;
                    insrm: InStream;
                    outsrm: OutStream;
                begin
                    rec.TestField(id);
                    if rec.pictures.Count > 0 then
                        if not Confirm('do you want to download? ') then
                            exit;
                    TempBlob.CreateOutStream(outsrm);
                    // rec.pictures.ExportFile(fileName)
                end;
            }
            action(delete)
            {
                ApplicationArea = All;
                Caption = 'Delete';
                Image = Delete;
                Enabled = isvalue;

                trigger OnAction()

                begin

                    DeletePic();
                end;
            }
        }
    }
    trigger OnAfterGetCurrRecord()

    begin
        confirmation();
    end;

    local procedure confirmation()
    begin

        isvalue := rec.pictures.Count > 0;
    end;

    local procedure TakePic()
    var
        picDesc: Text;
        instrm: InStream;
    begin
        rec.TestField(id);
        rec.TestField(Name);
        if rec.pictures.Count > 0 then
            if not Confirm(overridemsg) then
                exit;
        if Camera.GetPicture(instrm, picDesc) then begin
            Clear(Rec.pictures);
            Rec.pictures.ImportStream(instrm, picDesc);
            Rec.Modify(true);
            Message('succesful');
        end;
    end;

    local procedure MediaImport()
    var
        FileMgt: Codeunit "File Management";
        TempBlob: Codeunit "Temp Blob";
        fileName: Text;
        instrm: InStream;
        msg: Label 'the document %1 was succesfully uploaded';
    begin
        Rec.TestField(id);
        if rec.pictures.Count > 0 then
            if not Confirm(overridemsg) then
                exit;
        fileName := FileMgt.BLOBImport(TempBlob, 'select a photo');
        if fileName <> '' then begin
            Clear(rec.pictures);
            TempBlob.CreateInStream(instrm);
            Rec.pictures.ImportStream(instrm, fileName);
            Rec.Modify(true);
            Message(StrSubstNo(msg, fileName));
        end
        else
            Error('you canceled it ');
        ;
    end;


    local procedure DeletePic()

    begin
        Rec.TestField(id);
        rec.TestField(pictures);
        if not Confirm(cnfmmsg) then
            exit;
        Clear(rec.pictures);
        rec.Modify(true);
        Message('Its Done!!');
    end;

    var
        Camera: Codeunit Camera;
        overridemsg: label 'the exising picture will be replaced';
        cnfmmsg: Label 'Do you want to delete the picture?';

        isvalue: Boolean;

}
