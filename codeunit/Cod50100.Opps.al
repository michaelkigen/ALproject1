codeunit 50100 Opps
{


    var
    // ApprovalsMgmt: Codeunit "Approvals Mgmt.";
    // WorkflowMgt: Codeunit "Workflow Management";
    // WorkflowRspHandling: Codeunit "Workflow Response Handling";
    // WorkflowEventHandling: Codeunit "Workflow Event Handling";
    // RUNWORKFLOWONSENDFORAPPROVALCODE:
    //         Label 'RUNWORKFLOWONSEND%1FORAPPROVAL';
    // RUNWORKFLOWONCANCELFORAPPROVALCODE:
    //         Label 'RUNWORKFLOWONCANCEL%1FORAPPROVAL';
    // NoWorkflowEnabledErr:
    //         Label 'No approval workflow for this record type is enabled.';
    // WorkflowSendForApprovalEventDescTxt:
    //         Label 'Approval of %1 is requested.';
    // WorkflowCancelForApprovalEventDescTxt:
    //         Label 'Approval of %1 is canceled.';


    /// <summary>
    /// CheckStateName.
    /// </summary>
    /// <returns>Return value of type Text.</returns>
    procedure CheckStateName(ChemeletFamily: Record "Chemelet Family"): Text
    var
    begin
        ChemeletFamily.Reset();
        ChemeletFamily.SetCurrentKey(Age);
        if ChemeletFamily.Age >= 18 then
            exit('Adult')
        else
            exit('kid')
    end;

    procedure FindMethodTest()
    var
        ChemeletFamily: Record "Chemelet Family";
        Numbers: Integer;
    begin
        ChemeletFamily.Reset();
        if ChemeletFamily.FindSet() then
            Numbers := ChemeletFamily.Count;


        Message('Adults are %1', Numbers);

    end;

    procedure FindFirstTest()
    var
        ChemeletFamily: Record "Chemelet Family";

    begin
        ChemeletFamily.Reset();
        ChemeletFamily.SetCurrentKey(Age);
        ChemeletFamily.Ascending(false);
        if ChemeletFamily.FindFirst() then
            Message('The oldest is %1 and %2', ChemeletFamily.Name);
    end;

    procedure GetLenox()
    var
        ChemeletFamily: Record "Chemelet Family";
    begin
        ChemeletFamily.Reset();
        if ChemeletFamily.Get('CHMLT004') then
            Message('the name is %1', ChemeletFamily.Name);
    end;

    procedure ImportChemeletPicture(ChemeletFamily: Record "Chemelet Family")
    var
        OvverideMsgErr: label 'The existing picture will be replaced do you want to continue?';
        FromFile: Text;
        Instr: InStream;
    begin
        if ChemeletFamily.Picture.HasValue then begin
            if not Confirm(OvverideMsgErr) then
                exit
        end;
        if File.UploadIntoStream('Upload Chemelet picture', '', 'All files(*.*)|*.*', FromFile, Instr) then begin
            ChemeletFamily.Picture.ImportStream(Instr, FromFile);
            ChemeletFamily.Modify(true)
        end
    
    end;
    trigger OnRun()
    var
        msg: Label 'tumeirun %1';
    
    begin
        Message(StrSubstNo(msg,UserId));
    end;
}
