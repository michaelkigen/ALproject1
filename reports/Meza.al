report 50101 "Meza Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'layout/meza.rdl';
    
    dataset
    {
        dataitem(Meza; Meza)
        {
            column(No; No)
            {
            }
            column(Name; Name)
            {
            }
            column(Cash; "Cash ")
            {
            }
            column(Time; "Time")
            {
            }
            column(Age; Age)
            {
            }
            column(Status; Status)
            {
            }
            column(logo; Compinfo.Picture)
            {
            }
        }
    } 
    trigger OnPreReport()
    begin
        Compinfo.get;
        Compinfo.CalcFields(Picture);
        Message('before opening');
    end;
    trigger OnInitReport()
    begin
        Message('this is innit');
    end;
    var
        Compinfo: Record "Company Information";
}