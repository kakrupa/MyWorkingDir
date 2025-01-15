pageextension 50000 "Contact List Page Ext." extends "Contact List"
{
    layout
    {
        addlast(Control1)
        {
            field("Item Resp. Allowed"; Rec."Item Resp. Allowed")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies whether the contact is allowed to be responsible for an item.';
            }
            field("Responsible for No. Items"; Rec."Responsible for No. Items")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the number of items for which the contact is responsible.';
            }
        }
    }
}