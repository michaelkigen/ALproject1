report 50102 "Customer Report"
{
    ApplicationArea = All;
    Caption = 'Customer Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'layout/Customer_Report.rdl';

    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = "No.",Name,"Phone No.",Amount;
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(PhoneNo; "Phone No.")
            {
            }
            column(Amount; Amount)
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(options)
                {
                    field(michael;michael){
                        ApplicationArea = all;
                    }
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
    var
    michael : Text;
}
