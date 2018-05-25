page 123456702 "Seminar List"
{
    Caption = 'Seminar List';
    PageType = List;
    SourceTable = Seminar;
    Editable = False;
    CardPageID = 123456701;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {

                }

                field(Name; Name)
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }
                field("Seminar Price"; "Seminar Price")
                {

                }
                field(" Minimum Participants "; "Minimum Participants")
                {

                }
                field("Maximum Participants"; "Maximum Participants")
                {

                }

            }
        }
        area(factboxes)
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
                    RunObject = page "Seminar Comment Sheet";
                    RunPageLink = "Table name" = const (Seminar), "No." = field ("No.");
                    Image = Comment;

                }
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