//helloworld file 1

pageextension 50100 CustomerListExt extends "Customer List"
{
    var
        i: integer;
        cu: codeunit CUTest;

    trigger OnOpenPage();
    begin
        Message('App published: Hello world test 2 balu054');
<<<<<<< HEAD
        i := i + 1;
        cu.SetX(i);
=======
>>>>>>> 044f899d6755d7491581cf87e2ea16d50a9711b1
    end;

    trigger OnclosePage();
    begin
        i := cu.GetX();
        Message('App published: Bye world test 1 balu099' + format(i));
    end;

}