table 123456704 "Seminar Comment Line"
{
    Caption='Seminar Comment Line';
    LookupPageId = "Seminar Comment List";
    DrillDownPageId = "Seminar Comment List";
    
    fields

    {
        field(10;"Table name";Option)
        {
            Caption='Table name';
            OptionMembers="Seminar","Seminar Registration Header",
                            "Posted Seminar Reg. Header";
            OptionCaption='Seminar, Seminar Registration Header, Posted seminar Reg. Header';
        }
        field(20;"Document Line No.";Integer)
        {
            Caption='Document Line No';
        }
        field(30;"No.";Code[20])
        {
            Caption='No.';
            TableRelation=if ("Table name"=CONST(seminar)) "Seminar";
        }
        field(40;"Line No.";Integer)
        {
            Caption='Line No.';
        }
        field(50;Date;Date)
        {
            Caption='Date';
        }
        field(60;Code;Code[10])
        {
            Caption='Code';
        }
        field(70;Comment;Text[80])
        {

        }
    }

    keys
    {
        key(PK;"Table name","Document Line No.","No.","Line No.")
        {
            Clustered = true;
        }
    }
    
}