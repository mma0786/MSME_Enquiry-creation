tableextension 50000 "Ext. Opportunity" extends Opportunity
{
    fields
    {
        field(50000; "Customer No."; Code[20])
        {
            TableRelation = Customer;
        }
        field(50001; "Source of Enquiry"; Option)
        {
            OptionMembers = " ","Advertisement Call","Social Networking","Cold Calling. Staff Member","Regular Customer",Mail,"Online Form","Online Chat";
        }
        field(50002; "Person in charge"; Code[20])
        {
            TableRelation = Contact;
        }
        field(50003; "Product Type"; Code[20])
        {
            TableRelation = "Product Type";
        }
        field(50004; "Project Location"; Text[250])
        {

        }
        field(50005; "Technical Specification"; Text[250])
        {

        }
        field(50006; "Drawing Details"; Text[250])
        {

        }
        field(50007; "Necessary documents"; Text[250])
        {

        }
        field(50008; "Initiatives"; Text[250])
        {

        }
        field(50009; "MSME Status"; Option)
        {
            OptionMembers = " ","Under Progress","Quotation sent","Regret","Review","Under Approval";
        }
        field(50010; "Opportunity Type"; Option)
        {
            OptionMembers = " ","Tender","Small","Big projects","job in hand";
        }
        field(50011; "Authority Required"; Boolean)
        {

        }
        field(50012; "Authorities"; Option)
        {
            OptionMembers = " ","DM","DCCA","Tarkhees","ADM","Consultants","others";
        }
        field(50013; "Days of Conversion in Croposal"; Date)
        {

        }
        field(50014; "Date for Submitting the Quotation"; Date)
        {

        }
        field(50015; "Enquiry Registered by"; Text[150])
        {

        }
        field(50016; "Follow-up By"; Code[150])
        {
            TableRelation = User;
        }
        field(50017; "Follow-up Date/Time"; DateTime)
        {

        }
        field(50018; "Design Input required"; Boolean)
        {

        }
        field(50019; "Sample requested"; Boolean)
        {

        }
        field(50020; "Remarks"; Text[250])
        {

        }
        field(50021; "MSME Type"; Option)
        {
            OptionMembers = " ","Customer","Contact";
        }


    }

}