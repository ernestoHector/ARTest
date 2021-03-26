@isTest
private class AccountProcessorTest {
    @isTest static void TestAccountUpdate() {
        // Test Setup data
        // Create 200 new Accounts
        List<Id> lstIds = new List<Id>();
       
            Account acct = new Account(Name='Test Account ');
             insert acct;
        
            lstIds.add(acct.Id);
            Contact cnt = new Contact (accountId = acct.Id, LastName='Test Contact');
          
        
       
        insert cnt;
        
         system.debug('listids ' + lstIds);
        
        // Perform Test
        Test.startTest();
        accountProcessor.countContacts(lstIds);                          
        Test.stopTest();
        // Verify that 200 new Accounts were inserted
        system.debug('listids ' + lstIds);
        List<Account> verifyAccts = [SELECT Id, Number_of_Contacts__C FROM Account where Id IN :lstIds];
        System.assertEquals(1, verifyAccts[0].Number_of_Contacts__C);    
                
    }
}