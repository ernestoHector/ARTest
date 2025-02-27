@isTest
private class AccountTriggerTest {
    @isTest static void TestCreateNewAccountInBulk() {
        // Test Setup data
        // Create 200 new Accounts
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i,BillingState='CA');
            accts.add(acct);
        }              
        // Perform Test
        Test.startTest();
        insert accts;                               
        Test.stopTest();
        // Verify that 200 new Accounts were inserted
        List<Account> verifyAccts = [SELECT Id,ShippingState FROM Account];
        Boolean validState = true;
       for (Account a : verifyAccts) {
           if(a.ShippingState != 'CA'){
               validState = false;
           }
        }
        System.assert(validstate);
       
        // Also verify that 200 new Opportunities were inserted
        List<Opportunity> verifyOpps = [SELECT Id FROM Opportunity];                              
        System.assertEquals(200, verifyOpps.size());                             
    }
}