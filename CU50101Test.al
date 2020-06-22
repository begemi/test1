codeunit 50101 CUTest
{
    Permissions = TableData "Vendor Ledger Entry" = rm;//mora imati modify prava codeunit, inace ovo ne radi...
                                                       //zato ne radi iz pageextension - niko nema porava na izmjene ledger entries , 
                                                       //mozda da ima pravu licencu
                                                       //nebi bio problem podesit ta prava...
                                                       //TableNo = "Vendor Ledger Entry";

    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePostPurchaseDoc', '', true, true)]
    // procedure CheckApproverID(var Rec : Record "Purchase Header")
    procedure CheckApproverID(sender: Codeunit "Purch.-Post"; var purchaseHeader: record "Purchase Header"; previewMode: Boolean; commitIsSupressed: Boolean)
    VAR
        compInfo: record "Company Information";
    begin
        //dobro bi bilo prije ovog koda ispod provjeriti neki globalni settings dal se odobrava payment umjesto fakture...

        //uradjeno ovo iznad:
        compInfo.Get();
        //if compInfo."Approval VendEntries" then begin

        if ((purchaseHeader."Document Type" = purchaseHeader."Document Type"::Invoice) and (not previewMode)) then begin
            purchaseHeader.TestField("Assigned User ID");
        end;

        if ((purchaseHeader."Document Type" = purchaseHeader."Document Type"::Order) and (not previewMode) and (purchaseHeader.Invoice)) then begin
            purchaseHeader.TestField("Assigned User ID");
        end;

        //end;

    end;

    var
        x: integer;

    procedure SetX(y: integer)
    begin
        x := y;
    end;

    procedure GetX(): integer
    begin
        exit(x)
    end;

}