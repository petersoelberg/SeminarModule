page 123456707 "Seminar Comment List"
{
    PageType = List;
    SourceTable = "Seminar Comment Line";
    Caption='Seminar Comment List';
    Editable=false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {
                    
                }
                field(Code;Code)
                {
                    Visible=false;
                }
                field(Comment;Comment)
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
}