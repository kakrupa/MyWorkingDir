table 50000 "Item Responsible Contact"
{
    Caption = 'Item Responsible Contact';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;

        }
        field(10; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            TableRelation = Contact where(Type = const(Person));
            //2. metoda zabezpieczenia
            //TableRelation = Contact where(Type = const(Person), "Item Resp. Allowed" = const(true));

            //1. metoda zabezpieczenia
            trigger OnValidate()
            var
                Contact: Record Contact;
            begin
                Contact.Get("Contact No.");
                Contact.TestField("Item Resp. Allowed", true);
            end;
        }
        field(11; "Contact Name"; Text[100])
        {
            Caption = 'Contact Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Contact.Name where("No." = field("Contact No.")));
            Editable = False;
        }
        field(12; "Contact Name 2"; Text[50])
        {
            Caption = 'Contact Name 2';
            FieldClass = FlowField;
            CalcFormula = lookup(Contact."Name 2" where("No." = field("Contact No.")));
            Editable = False;
        }
    }

    keys
    {
        key(Key1; "Item No.")
        {
            Clustered = true;
        }
    }

}