pageextension 123456701 CSD_ResourceListExt extends "Resource List"

{
    layout
    {
            modify(type)
            {
                Visible = ShowType;
            }

            addafter(Type)
            {
                Field("Resource Type"; "CSD_Resource Type")
            {
            }
                Field("Maximum Participants"; "CSD_Maximum Participants")
            {
                Visible = ShowMaxField;
                
            }
                
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    trigger OnOpenPage();

    begin
        FilterGroup(3); ShowType := (GetFilter(Type) = '');
        ShowMaxField :=
            (GetFilter(Type) = format(Type::machine));
        FilterGroup(0);

    end;

    var
        [InDataSet]
        ShowType: Boolean;
        [InDataSet]
        ShowMaxField: Boolean;

}