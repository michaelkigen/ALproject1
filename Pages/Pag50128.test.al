page 50128 "test Admin page"
{
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(headline; "Headline RC test")
            {
                ApplicationArea = Basic, Suite;
            }
            part(SystemAdminActivities; "RC Activities")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action(NewUser)
            {
                Caption = 'New User';
                RunObject = page "User Card";
                ApplicationArea = Basic, Suite;
            }
            action(NewWorkFlow)
            {
                Caption = 'Work FLows';
                RunObject = page Workflow;
                ApplicationArea = Basic, Suite;
            }

        }
        area(Processing)
        {
            action(PRJournal)
            {
                Caption = 'payment recon jurnal';
                RunObject = page "Payment Reconciliation Journal";
                ApplicationArea = Basic, Suite;
            }
        }
        area(Reporting)
        {
            action(changelog)
            {
                Caption = 'change log';
                RunObject = page "Company Detail";
                ApplicationArea = Basic, Suite;
            }
        }
        // Navigation bar
        area(Sections)
        {

            group(user)
            {
                Caption = 'Users';
                action(Users)
                {
                    RunObject = Page Users;
                    ApplicationArea = Basic, Suite;//to display
                }
                action("User time reg")
                {
                    RunObject = Page "User Time Registers";
                    ApplicationArea = Basic, Suite;
                }
                action("permision set")
                {
                    RunObject = Page "Permission Set";
                    ApplicationArea = Basic, Suite;
                }

                action("user groups")
                {
                    RunObject = Page "User Groups";
                    ApplicationArea = Basic, Suite;
                }
            }
            group("group 2")
            {
                Caption = 'Work Flow';
                group("workflow")
                {
                    Caption = 'Work FLow User Group';
                    action("Work flow user group")
                    {
                        RunObject = Page "Workflow User Group";
                        ApplicationArea = Basic, Suite;
                    }
                    action("Aprooval user setup")
                    {
                        RunObject = Page "Approval User Setup";
                        ApplicationArea = Basic, Suite;
                    }
                    action("work flow")
                    {
                        RunObject = Page Workflow;
                        ApplicationArea = Basic, Suite;
                    }
                }
            }
        }
        area(Embedding)//Naviagation Menu
        {
            action("User Setup")
            {
                RunObject = Page "User Setup";
                ApplicationArea = Basic, Suite;
            }
            action("Sessions")
            {
                RunObject = Page "Concurrent Session List";
                ApplicationArea = Basic, Suite;
            }
            action("Change log Entries")
            {
                RunObject = Page "Change Log Entries";
                ApplicationArea = Basic, Suite;
            }
        }
    }
}
profile "Test admin"
{
    Caption = 'Test System Administrator';
    RoleCenter = "test Admin page";
}