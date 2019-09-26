tableextension 50100 "CSD Resource Ext" extends Resource
/*
    Documentation
*/
{
    fields
    {

        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            DataClassification = CustomerContent;
            OptionMembers = Internal,External;
            OptionCaption = 'Internal,External';
        }

        field(50102; "CSD Maximun Participants"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'CSD Maximum Participants';
        }

        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Quantity Per Day';
        }
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }
    }

    var
        myInt: Integer;
}