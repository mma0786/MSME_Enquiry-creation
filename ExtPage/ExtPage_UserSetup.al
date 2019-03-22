pageextension 50002 "Ext. User Setup" extends "User Setup"
{
    layout
    {
        // Add changes to page layout here
        addafter(Email)
        {
            field("Enquiry Restriction"; "Enquiry Restriction")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

}