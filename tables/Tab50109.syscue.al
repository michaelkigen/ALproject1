table 50109 "sys cue"
{
    Caption = 'sys cue';
    
    
    fields
    {
        field(1; id; Code[50])
        {
            Caption = 'id';
        }
        field(2; "Logged in users"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Active Session" where("Client Type"=const("Web Client")));
        }
        field(3; "Minutes Logged in"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("User Time Register".Minutes);
        }
        field(4; "total minutes this month"; Decimal)
        {
            Caption = 'total minutes this month';
        }
    }
    keys
    {
        key(PK; id)
        {
            Clustered = true;
        }
    }
    procedure getlogedinminutes() Montlyminutes : Decimal
    var
        UserTimeReg: Record "User Time Register";
    begin
        UserTimeReg.Reset();
        UserTimeReg.SetRange(Date,CalcDate('-CM',Today ),CalcDate('CM',Today));
        if UserTimeReg.FindFirst() then
        begin
            UserTimeReg.CalcSums(Minutes);
            Montlyminutes := UserTimeReg.Minutes;
        end;
    end;
}
