page 50100 "CSD Seminar Setup"

//Chapter 5 - Lab 2-3

{
    PageType = Card;
    SourceTable = "CSD Seminar Setup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar Nos."; "Seminar Nos.")
                {

                }
                field("Seminar registration Nos.";
                "Seminar Registration Nos.")
                {

                }
                field("Posted Seminar Reg Nos.";
                "Posted Seminar Reg. Nos.")
                {

                }
            }
        }
    }

    trigger OnOpenPage();
    begin
        if not Get() then begin
            Init();
            Insert();
        end;
    end;
}