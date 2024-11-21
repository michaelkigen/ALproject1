report 50104 "Vendors Rpt"
{
    ApplicationArea = All;
    Caption = 'Vendors Rpt';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'layout/vendors.rdl';
    dataset
    {
        dataitem(Vendor; Vendor)
        {
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(SearchName; "Search Name")
            {
            }
            column(Name2; "Name 2")
            {
            }
            column(Address; Address)
            {
            }
            column(Address2; "Address 2")
            {
            }
            column(City; City)
            {
            }
            column(Contact; Contact)
            {
            }
            column(PhoneNo; "Phone No.")
            {
            }
            column(TelexNo; "Telex No.")
            {
            }
            column(OurAccountNo; "Our Account No.")
            {
            }
            column(TerritoryCode; "Territory Code")
            {
            }
            column(GlobalDimension1Code; "Global Dimension 1 Code")
            {
            }
            column(GlobalDimension2Code; "Global Dimension 2 Code")
            {
            }
            column(BudgetedAmount; "Budgeted Amount")
            {
            }
            column(VendorPostingGroup; "Vendor Posting Group")
            {
            }
            column(CurrencyCode; "Currency Code")
            {
            }
            column(LanguageCode; "Language Code")
            {
            }
            column(StatisticsGroup; "Statistics Group")
            {
            }
            column(PaymentTermsCode; "Payment Terms Code")
            {
            }
            column(FinChargeTermsCode; "Fin. Charge Terms Code")
            {
            }
            column(PurchaserCode; "Purchaser Code")
            {
            }
            column(ShipmentMethodCode; "Shipment Method Code")
            {
            }
            column(ShippingAgentCode; "Shipping Agent Code")
            {
            }
            column(InvoiceDiscCode; "Invoice Disc. Code")
            {
            }
            column(CountryRegionCode; "Country/Region Code")
            {
            }
            column(Comment; Comment)
            {
            }
            column(LocationCode; "Location Code")
            {
            }
            column(Logo; CompanyInfo.Picture)
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
