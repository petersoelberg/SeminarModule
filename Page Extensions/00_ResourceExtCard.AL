pageextension 123456700 CSD_ResourceCardExt extends "Resource Card"
{  // CSD1.00 - 2018.02.01 - D.E.Veloper
    layout
    {
        addlast(General)
        {
            field("Resource Type"; "CSD_Resource Type")
            {

            }
            field("Quantity Per Day"; "CSD_Quantity Per day")
            {

            }
        }
        addafter("Personal Data")
        {
            group(Room)
             {
                 field("Maximum Participants"; "CSD_Maximum Participants")

                 {

                Visible = ShowMaxField;

                 }
             }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

trigger OnOpenPage();

begin
    ShowMaxField := (Type = Type::Machine);
    CurrPage.Update(False);
    
end;
    var [InDataSet]
    ShowMaxField: Boolean;
        
}