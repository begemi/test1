//helloworld file 1

pageextension 50100 CustomerListExt extends "Customer List"
{
    var
        i: integer;
        cu: codeunit CUTest;
        vend: record Vendor;

    trigger OnOpenPage();
    begin
        Message('App published: Hello world test 2 balu054');
        i := i + 1;
        cu.SetX(i);
    end;

    trigger OnclosePage();
    begin
        i := cu.GetX();
        Message('App published: Bye world test 1 balu099' + format(i));
    end;

}