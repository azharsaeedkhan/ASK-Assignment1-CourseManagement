page 90301 "ASK Course List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "ASK Course";
    Caption = 'Course List';
    Editable = false;
    CardPageId = "ASK Course Card";
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field(Code; Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}