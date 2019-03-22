pageextension 50004 "Ext. Opportunity List" extends "Opportunity List"
{
    layout
    {
        addafter("No.")
        {
            field("Days of Conversion in Croposal"; "Days of Conversion in Proposal")
            {
                ApplicationArea = All;
                StyleExpr = StyleExprBoolG;
                Style = Attention;


            }
        }
    }


    trigger
    OnAfterGetRecord()
    begin
        UpdateDayConversionProposalStyle("No.");
    end;







    var
        StyleExprBoolG: Boolean;
        StyleVarG: Integer;

    procedure UpdateDayConversionProposalStyle(OpprNo: Code[30])
    var
        SalesHeaderRecG: Record "Sales Header";
    begin
        SalesHeaderRecG.Reset;
        SalesHeaderRecG.SetRange("Opportunity No.", OpprNo);
        //WorkDate < "Days of Conversion in Proposal") AND
        /*
        if (NOT SalesHeaderRecG.FindFirst) then
            StyleExprBoolG := true
        else  */
        "Days of Conversion in Proposal" := WorkDate - 10;
        Modify;
        StyleExprBoolG := true;
        //Message('%1', StyleExprBoolG);

    end;
}