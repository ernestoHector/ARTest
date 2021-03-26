trigger AccountAddressTrigger on Account (before insert, before update) {
//   set  billing address based on Checkbox
for (Account Acc : Trigger.new) {
    if (acc.Match_Billing_Address__C && acc.BillingPostalCode <> null) {
        acc.ShippingPostalCode = acc.BillingPostalCode;

    }
    
}
}