codeunit 50111 Validations
{
    trigger OnRun()
    begin
        
    end;
    local procedure CheckForPlusSign ( TextToVerify : Text)
    var

    begin
        if(StrPos(TextToVerify, '+') > 0) then
        begin
            Message('Plus sign found');
        end;
    end;
    [EventSubscriber(ObjectType::Page, Page::"Customer Card", 'OnBeforeValidateEvent', 'Address',false, false)]
    local procedure OnBeforeValidateAddress(Rec: Record Customer; xRec: Record Customer)
    begin
        CheckForPlusSign(Rec.Address);
    end;
}