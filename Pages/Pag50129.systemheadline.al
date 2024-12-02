page 50129 "Headline RC test"
{
    PageType = HeadlinePart;
    RefreshOnActivate = true;

    layout
    {
        area(content)
        {
            group("greeting")
            {
                Visible = isvisible;
                ShowCaption = false;
                Editable = false;

                field(geetingtext; RCHeadlinesPageCommon.GetGreetingText())
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;

                }
            }
            group(body)
            {
                field(logedon; StrSubstNo(loggedOnUsers, GetNoOfActiveUsers()))
                {
                    ApplicationArea = Basic, Suite;
                    DrillDown = true;
                    Editable = true;
                    trigger OnDrillDown();

                    begin
                        Page.Run(Page::"Concurrent Session List");
                    end;
                }
                field(MkM; siteLabel)
                {
                    ApplicationArea = Basic, Suite;
                    DrillDown = true;
                    Editable = true;
                    trigger OnDrillDown();

                    begin
                        Hyperlink('https://cfaomobility.co.ke/cfao-brands/yamaha/yamaha-r3/');
                    end;
                }

            }

        }
    }

    var
        [InDataSet]
        isvisible: Boolean;
        siteLabel: Label '<qualifier>This site. </qualifier><payload>Visit Site <emphasize> Michael MAIYO </emphasize></payload>';
        loggedOnUsers: Label '<qualifier>Users</qualifier> <payload>Number of loged in users <emphasize> %1 </emphasize></payload>';
        RCHeadlinesPageCommon: Codeunit "RC Headlines Page Common";

    trigger OnOpenPage()
    begin
        RCHeadlinesPageCommon.HeadlineOnOpenPage(Page::"Headline RC test");
        isvisible := RCHeadlinesPageCommon.IsUserGreetingVisible();
    end;

    local procedure GetNoOfActiveUsers(): Integer
    var
        ActiveSession: Record "Active Session";
    begin
        ActiveSession.Reset();
        ActiveSession.SetRange("Client Type", ActiveSession."Client Type"::"Web Client");
        exit(ActiveSession.Count())
    end;


}