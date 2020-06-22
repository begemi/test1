//helloworld file 1

pageextension 50100 CustomerListExt extends "Customer List"
{
    var
        i: integer;
        cu: codeunit CUTest;

    trigger OnOpenPage();
    begin
        Message('App published: Hello world test 2 balu054');
        cu.SetX(10);
    end;

    trigger OnclosePage();
    begin
        i := cu.GetX();
        Message('App published: Bye world test 1 balu099' + format(i));
    end;

}