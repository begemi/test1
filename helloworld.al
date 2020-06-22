//helloworld file 1

pageextension 50100 CustomerListExt extends "Customer List"
{
    var
        i: integer;

    trigger OnOpenPage();
    begin
        Message('App published: Hello world test 2 balu054');
    end;

    trigger OnclosePage();
    begin
        Message('App published: Bye world test 1 balu099');
    end;

}