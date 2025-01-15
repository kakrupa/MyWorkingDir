pageextension 50001 "Contact Card Page Ext." extends "Contact Card"
{
    layout
    {
        addlast(General)
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