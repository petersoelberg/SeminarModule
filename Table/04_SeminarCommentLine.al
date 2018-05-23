table 123456704 "Seminar Comment Line"
{
    Caption='Seminar Comment Line';
    
    fields

    {
        field(10;"Table name";Option)
        {
            Caption='Table name';
            OptionMembers="Seminar","Seminar Registration 
                            Header","Posted Seminar Reg. Header";
            OptionCaption='Seminar, Seminar Registration Header, Posted seminar Reg. Header';



        }
    }

    keys
    {
        key(PK;"Table name","Document Line No.","No.","Line No.")
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}