page 50130 "RC Activities"
{
    ApplicationArea = All;
    Caption = 'RC Activities';
    PageType = CardPart;
    SourceTable = "sys cue";
    RefreshOnActivate = true;
    
    layout
    {
        area(Content)
        {
            cuegroup(group1)
            {
                CuegroupLayout =Wide;
                ShowCaption = false;

                field("Minutes Logged in";Rec."Minutes Logged in")
                {
                    ApplicationArea =Suite;
                    DrillDownPageId = "User Time Registers";
                }
                field("total minutes this month";Rec."total minutes this month")
                {
                    ApplicationArea =Suite;
                    DrillDownPageId = "User Time Registers";
                }
            }
            cuegroup(users)
            {
                field("Logged in users";Rec."Logged in users")
                {
                    ApplicationArea =Suite;
                    DrillDownPageId ="Concurrent Session List" ;
                }
                field("Minutes Loggedin";Rec."Minutes Logged in")
                {
                    ApplicationArea =Suite;
                    DrillDownPageId ="User Time Registers";
                }
            }
            cuegroup(links)
            {
                actions
                {
                    action(YouTube)
                    {
                        ApplicationArea =Basic, Suite;
                        Image=TileGreen;
                        trigger OnAction()
                        begin
                            Hyperlink('https://www.youtube.com/watch?v=pFaErQx8_4Y&list=PLZZ9ZT-Ask0qWu6tw93WNfQaqTWnrr3ED&index=5');
                        end;
                    }
                    action(trading)
                    {
                        ApplicationArea =Basic, Suite;
                        Image=TileSettings;
                        trigger OnAction()
                        begin
                            Hyperlink('https://www.tradingview.com/symbols/XAUUSD/');
                        end;
                    }
                    action(businessCentral)
                    {
                        ApplicationArea =Basic, Suite;
                        Image=TileBrickProduct;
                        trigger OnAction()
                        begin
                            Hyperlink('https://usedynamics.com/business-central/');
                        end;
                    }
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        if not rec.get then
        begin
            rec.Init();
            rec.Insert();
        
        end;
    end;
    
    trigger OnAfterGetCurrRecord()
    begin
        rec."total minutes this month":= rec.getlogedinminutes();
    end;
}
