@isTest
private class AddPrimaryContactTest {
    @testSetup
    static void setup() {
        List<Account> account = new List<Account>();
    
        for (Integer i=0;i<50;i++) {
            account.add(new Account(Name= 'Test NY Account' + i, BillingState = 'NY'));
            account.add(new Account(Name= 'Test CA Account' + i, BillingState = 'CA'));

        }
        insert Account;
       
       
    }
    @isTest static void test() {
       
        Contact cnt = new contact(FirstName = 'Test Contact', LastName='Last name');
      
        AddPrimaryContact apcq = new AddPrimaryContact(cnt, 'NY');
        Test.startTest();
        System.enqueueJob(apcq);
        Test.stopTest();
        // after the testing stops, assert records were updated properly
        System.assertEquals(50, [select count() from Contact ],'worked');
       
    }
}