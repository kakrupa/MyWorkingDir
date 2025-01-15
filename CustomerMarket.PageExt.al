pageextension 50125 CustomerCardMarket extends "Customer Card"
{
    layout
    {
        addafter("Name 2")
        {
            field(Market; Rec.Market)
            {
                ToolTip = 'This field specifies..';
            }
        }
    }
}