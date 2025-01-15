tableextension 50001 "Item Table Ext." extends Item
{
    fields
    {
        field(50000; "No. of Responsible Contacts"; Integer)
        {
            Caption = 'No. of Responsible Contacts';
            FieldClass = FlowField;
            CalcFormula = count("Item Responsible Contact" where("Item No." = field("No.")));
        }
    }
}