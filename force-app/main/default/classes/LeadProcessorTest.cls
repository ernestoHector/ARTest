@isTest
private class LeadProcessorTest {
    @testSetup
    static void setup() {
        List<Lead> lead = new List<Lead>();
    
        for (Integer i=0;i<200;i++) {
            lead.add(new Lead(FirstName = 'Lead', LastName= 'Test ' + i, Company= 'my Company'));
        }
        insert lead;
       
    }
    @isTest static void test() {
        Test.startTest();
        LeadProcessor lpb = new LeadProcessor();
        Id batchId = Database.executeBatch(lpb);
        Test.stopTest();
        // after the testing stops, assert records were updated properly
        System.assertEquals(200, [select count() from lead where LeadSource = 'DreamForce'],'worked');
       
    }
}