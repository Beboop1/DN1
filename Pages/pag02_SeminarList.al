page 50102 "CSD Seminar List"

// Chapter 5 Lab 2-6
{
    Caption = 'Seminar List';
    PageType = List;
    SourceTable = "CSD Seminar";
    Editable = false;
    CardPageId = 50101;
    UsageCategory = Lists;


    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {

                }
                field("Name"; Name)
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }
                field("Seminar Price"; "Seminar Price")
                {

                }
                field("Minimum Participants"; "Minimum Participants")
                {

                }
                field("Maximum Participants"; "Maximum Participants")
                {

                }
            }
        }
        area(FactBoxes)
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
            group("&Seminar")
            {
                action("Co&mments")
                {
                    //RunObject = page "CSD Seminar Comment Sheet";
                    // RunPageLink = "Table Name" = const(Seminar), "No." = field("No.");
                    Image = Comment;
                }
                // >> Lab 8 1-2
                action("Ledger Entries")
                {
                    Caption = 'Ledger Entries';
                    RunObject = page "CSD Seminar Ledger Entries";
                    RunPageLink = "Seminar No." = field ("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortcutKey = "CTRL+F7";
                    Image = WarrantyLedger;
                }
                // >> Lab 8 1-2
                action("&Registration")
                {
                    Caption = '&Registration';
                    RunObject = page "CSD Seminar Registration List";
                    RunPageLink = "Seminar No." = field ("No.");
                    Image = Timesheet;
                    Promoted = true;
                    PromotedCategory = Process;
                }
                // << Lab 8 1-2
            }
        }
        // >> Lab 8 1-2
        area(Processing)
        {
            action("Seminar Registration")
            {
                RunObject = page "CSD Seminar Registration";
                RunPageLink = "Seminar No." = field ("No.");
                RunPageMode = Create;
                Image = NewTimesheet;
                Promoted = true;
                PromotedCategory = new;
            }
        }
        // << Lab 8 1-2
    }
}