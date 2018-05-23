page 123456700 "Seminar Setup"
{
    PageType = Card;
    SourceTable = "Seminar Setup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = False;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(Numbering)
            {
                field("Seminar Nos."; "Seminar Nos.")
                {
                }
                
                field("Seminar Registration nos.";
                "Seminar Registration nos.")                   
                {
                }
                field("Posted Seminar Reg. Nos.";
                "Posted Seminar Reg. Nos.")
                {
                
                }

            }   
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
    
    var
        myInt : Integer;
}