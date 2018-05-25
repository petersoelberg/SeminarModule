page 123456701 "Seminar Card"
{
    PageType = Card;
    SourceTable = Seminar;
    Caption = 'Seminar Card';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    trigger OnAssistEdit();

                    begin
                        if AssistEdit then
                            CurrPage.Update
                    end;
                }
                field(Name; Name)
                {
                    Caption = 'Name';
                }
                field("Search Name"; "Search Name")
                {
                    Caption = 'Search Name';
                }
                field("Seminar Duration"; "Seminar Duration")
                {
                    Caption = 'Seminar Duration';
                }
                field(" Minimum Participants "; "Minimum Participants")
                {
                    Caption = 'Minimum Participants';
                }
                field("Maximum Participants"; "Maximum Participants")
                {
                    Caption = 'Maximum Participants';
                }
                field(Blocked; Blocked)
                {
                    Caption = 'Blocked';
                }
                field("Last Date Modified"; "Last Date Modified")
                {

                }


                group(Invoicing)

                {
                    field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                    {
                    }
                    field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                    {

                    }
                    field("Seminar Price"; "Seminar Price")

                    {

                    }


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

        }
        area(Processing)
        {

            action("Seminar Registration")
            {

                RunObject = page "Seminar Registration";
                RunPageLink = "Seminar No." = field ("No.");
                RunPageMode = Create;
                Image = NewTimesheet;

            }
            group("&Seminar")
            {
                action("Co&mments")
                {
                    /*RunObject=page "Seminar Comment Sheet"
                    RunPageLink = "Table name"=const(seminar),
                                "No."=Field("No.");
                    Image = Comment;

                    Promoted = True;

                    PromotedIsbig = True

                    PromotedOnly = True;*/

                }

                //lab 8 1-2

                action("Ledger Entries")
                {
                    RunObject = page "Seminar Ledger Entries";
                    RunPageLink = "Seminar No." = field ("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortcutKey = "Ctrl+F7";
                    Image = WarrantyLedger;
                }
                action("&Registration")
                {
                    RunObject = page "Seminar Registration List";
                    RunPageLink = "Seminar no." = field ("No.");
                    Image = Timesheet;
                    Promoted = True;
                    PromotedCategory = Process;
                }

            }
        }
    }
}
