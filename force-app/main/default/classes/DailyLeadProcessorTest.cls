@istest
private with sharing class DailyLeadProcessorTest {
    @testSetup
    static void setup() {
        List<Lead> lead = new List<Lead>();
    
        for (Integer i=0;i<200;i++) {
            lead.add(new Lead(FirstName = 'Lead', LastName= 'Test ' + i, Company= 'my Company'));
        }
        insert lead;
     
    }
    @isTest static void test() {
        String cronexp = '0 0 0 15 3 ? 2022';
        test.startTest();
        String jobId = System.schedule('Schedules Apex Test',
        cronexp,
        new DailyLeadProcessor());
        Test.stopTest();
        List<lead> lead = [select ID, LeadSource from Lead where LeadSource = 'DreamForce' limit 200];
        System.assertEquals(200, lead.size(), 'Lead set');
    }

}