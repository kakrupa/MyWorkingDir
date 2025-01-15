table 50130 "Customer Market"
{
    DataClassification = ToBeClassified;
   
    fields
    {
        field(1;Code; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(10; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
    }
   
    keys
    {
        key(PK;Code)
        {
            Clustered = true;
        }
    }
 
}
 