@isTest
private class TestRestrictContactByName {
@isTest
    static void  test1(){
        Contact  cnt1 = new Contact (FirstName='test', LastName ='ValidName');
        Test.startTest();
         Database.saveresult result = Database.insert(cnt1);
        Test.stopTest();
       System.assertEquals(True, result.isSuccess());
       
    }
    @isTest
    static void  test2(){
        Contact  cnt2 = new Contact (FirstName='test', LastName ='INVALIDNAME');
        Test.startTest();
         Database.SaveResult result = Database.insert(cnt2, false);
        Test.stopTest();
     System.assertEquals(False, result.isSuccess());
       
    }
}