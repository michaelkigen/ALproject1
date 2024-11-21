report 50103 "Bank Report"
{
    ApplicationArea = All;
    Caption = 'Bank Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout =RDLC;
    RDLCLayout = 'layout/bank.rdl';
    dataset
    {
        dataitem(BankAccount; "Bank Account")
        {
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(PhoneNo; "Phone No.")
            {
            }
            column(TelexNo; "Telex No.")
            {
            }
            column(BankAccountNo; "Bank Account No.")
            {
            }
            column(Amount; Amount)
            {
            }
            column(Balance; Balance)
            {
            }
            column(logo; CompanyInfo.Picture)
            {    
            }
            column(CompName; CompanyInfo.Name)
            {
            }
            dataitem("Bank Account Ledger Entry";"Bank Account Ledger Entry")
            {
                DataItemLink = "Bank Account No." = field("Bank Account No.");
                column(Document_no; "Document No.")
                {    
                }
                column(Description; "Description")
                {    
                }
                column(Posting_Date; "Posting Date")
                {    
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
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
    trigger OnPreReport()
    begin
        CompanyInfo.get;
        CompanyInfo.CalcFields(Picture);
    end;
    var
    CompanyInfo : Record "Company Information";
}
