tableextension 50125 CustomerMarket extends Customer
{
    fields
    {
        field(50100; Market; Code[20])
        {
            Caption = 'Market';
            TableRelation = "Customer Market";
            DataClassification = ToBeClassified;
        }
    }
}