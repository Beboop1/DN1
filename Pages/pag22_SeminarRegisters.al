page 50122 "CSD Seminar Registers"

//Chapter - Lab 2-11

{
    Caption = 'CSD Seminar Register';
    Editable = false;
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Register";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {

                }
                field("Creation Date"; "Creation Date")
                {

                }
                field("User ID"; "User ID")
                {

                }
                field("Source Code"; "Source Code")
                {

                }
                field("Journal Batch Name"; "Journal Batch Name")
                {

                }
            }
        }
        area(Factboxes)
        {
            systempart("Links"; Links)
            {
            }
            systempart("Notes"; Notes)
            {
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action("Seminar Ledgers")
            {
                Image = WarrantyLedger;
                RunObject = codeunit "CSD Seminar Reg.-Show Ledger";
            }
        }
    }
}