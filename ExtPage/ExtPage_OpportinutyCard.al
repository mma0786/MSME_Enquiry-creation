pageextension 50003 "Ext. Opportunity" extends "Opportunity Card"
{
    layout
    {
        addafter(Description)
        {
            field("MSME Type"; "MSME Type")
            {
                ApplicationArea = All;
                trigger
                OnValidate();
                begin
                    if "MSME Type" = "MSME Type"::Customer then begin
                        EditiableCustomerBoolG := true;
                        EditiableContactBoolG := false
                    end
                    else if "MSME Type" = "MSME Type"::Contact then begin
                            EditiableContactBoolG := true;
                            EditiableCustomerBoolG := false
                        end
                        else begin
                            EditiableCustomerBoolG := false;
                            EditiableContactBoolG := false;
                        end;

                end;
            }
            field("Customer No."; "Customer No.")
            {
                ApplicationArea = All;
                Enabled = EditiableCustomerBoolG;
            }

        }
        /*
            Start Modify Control on page level
        */
        modify("Contact No.")
        {
            ApplicationArea = All;
            Enabled = EditiableContactBoolG;
        }
        // modify()
        /*
            Stop Modify Control on page level
        */
        /*
            Star tNew Group/ Tab is creatded for MSME CR
        */
        addafter(General)
        {
            group("MSME")
            {
                field("Source of Enquiry"; "Source of Enquiry")
                {
                    ApplicationArea = All;
                }
                field("Person in charge"; "Person in charge")
                {
                    ApplicationArea = All;
                }
                field("Product Type"; "Product Type")
                {
                    ApplicationArea = All;
                }
                field("Project Location"; "Project Location")
                {

                }
                field("Technical Specification"; "Technical Specification")
                {

                }
                field("Necessary documents"; "Necessary documents")
                {

                }
                field(Initiatives; Initiatives)
                {

                }
                field("MSME Status"; "MSME Status")
                {

                }
                field("Opportunity Type"; "Opportunity Type")
                {

                }
                field("Authority Required"; "Authority Required")
                {

                }
                field(Authorities; Authorities)
                {

                }
                field("Days of Conversion in Croposal"; "Days of Conversion in Proposal")
                {

                }
                field("Date for Submitting the Quotation"; "Date for Submitting the Quotation")
                {

                }
                field("Enquiry Registered by"; "Enquiry Registered by")
                {
                    Editable = false;
                }
                field("Follow-up By"; "Follow-up By")
                {

                }
                field("Follow-up Date/Time"; "Follow-up Date/Time")
                {
                    Editable = false;
                }
                field("Drawing Details"; "Drawing Details")
                {

                }
                field("Sample requested"; "Sample requested")
                {

                }
                field(Remarks; Remarks)
                {

                }





            }
        }
        /*
            Star tNew Group/ Tab is creatded for MSME CR
        */










    }

    actions
    {
        // Add changes to page actions here
    }
    var
        EditiableCustomerBoolG: Boolean;
        EditiableContactBoolG: Boolean;

    trigger
    OnOpenPage();
    begin
        EditiableCustomerBoolG := false;
        EditiableContactBoolG := false;
        "Enquiry Registered by" := UserId;
        "Follow-up Date/Time" := CurrentDateTime;

    end;

}