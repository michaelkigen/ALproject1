page 50121 "crop Card Part"
{
    ApplicationArea = All;
    Caption = 'crop Card Part';
    PageType = CardPart;
    SourceTable = Crops;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Profile"; Rec."Profile")
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.', Comment = '%';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Upload)
            {
                Caption ='Upload';
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
