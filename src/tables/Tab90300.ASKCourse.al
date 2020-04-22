table 90300 "ASK Course"
{
    DataClassification = CustomerContent;
    Caption = 'Course';
    fields
    {
        field(10; Code; Code[10]) { }
        field(20; Name; Text[30]) { }
        field(30; Description; Text[50]) { }
        field(40; Type; Option)
        {
            OptionMembers = "Instructor Led","e-Learning","Remote Training";
        }
        field(50; Duration; Decimal) { }
        field(60; Price; Decimal) { }
        field(70; Active; Boolean) { }
        field(80; Difficulty; Integer) { }
        field(90; "Passing Rate"; Integer) { }
        field(100; "Instructor Code"; Code[20])
        {
            TableRelation = Resource where(Type = const(Person));
        }
        field(120; "Instructor Name"; Text[50])
        {
            Editable = False;
            FieldClass = FlowField;
            CalcFormula = Lookup (Resource.Name where("No." = FIELD("Instructor Code")));
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
        key("Secondary Key 1"; "Instructor Code") { }
        key("Secondary Key 2"; "Type") { }
    }
}