pageextension 50003 "Item Card Page Ext." extends "Item Card"
{
    layout
    {
        addlast(Item)
        {
            field("No. of Responsible Contacts"; Rec."No. of Responsible Contacts")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the number of contacts responsible for the item.';
            }
        }
    }

    actions
    {
        addfirst(navigation)
        {
            action("Item Responsible Contact")
            {
                ApplicationArea = All;
                Caption = 'Item Responsible Contact';
                Image = SalesPurchaseTeam;
                RunObject = page "Item Responsible Contact List";
                RunPageLink = "Item No." = field("No.");
                ToolTip = 'View or edit contacts responsible for the item.';
            }
        }
    }
}