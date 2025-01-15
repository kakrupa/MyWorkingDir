tableextension 50000 "MyExtenContact Table Ext." extends Contact
{
    fields
    {
        field(50000; "Item Resp. Allowed"; Boolean)
        {
            Caption = 'Item Resp. Allowed';
        }
        field(50001; "Responsible for No. Items"; Integer)
        {
            Caption = 'Responsible for No. Items';
            FieldClass = FlowField;
            CalcFormula = count("Item Responsible Contact" where("Contact No." = field("No.")));
        }
    }
}