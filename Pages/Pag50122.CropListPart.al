page 50122 "Crop List Part"
{
    ApplicationArea = All;
    Caption = 'Crop List Part';
    PageType = ListPart;
    SourceTable = Crops;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Profile"; Rec."Profile")
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(upload)
            {
                Caption = 'Upload';
                Image = Import;
                trigger OnAction()
                var
                    CropProfile: Codeunit "Crop Profile ";
                begin
                    CropProfile.CropMedia(Rec);
                end;
            }
            action(Download)
            {
                ApplicationArea = All;
                Caption = 'Download';
                Image = Export;

                trigger OnAction()
                var
                    TempBlob: Codeunit "Temp Blob";
                    FileName: Text;
                    outsrm: OutStream;
                    instrm: InStream;
                begin
                    Rec.TestField(Name);
                    if Rec.Profile.HasValue then
                        if not Confirm('Download? ') then
                            exit;
                    TempBlob.CreateOutStream(outsrm);
                    Rec.Profile.ExportStream(outsrm);
                    TempBlob.CreateInStream(instrm);
                    FileName := 'PROFILE.JPEG';

                    if DownloadFromStream(instrm, 'Download', '', 'ALL FILES (*.*)|*.*', FileName) then
                        Message('Downloading')
                    else
                        Error('an error occured while downloading , please try again');
                end;
            }
        }
    }
}
