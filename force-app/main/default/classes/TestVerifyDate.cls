@isTest
private class TestVerifyDate {
   @isTest 
    static void Test1(){  
    Date date1 =  Date.newInstance(2020, 03, 18);
    Date dat130 = date1.addDays(30);
    Date dat1eom = Date.newInstance(2020, 03, 31);
    Date date2 = Date.newInstance(2020, 05, 18);
    Date date3 = Date.newInstance(2020, 02, 20);
    Date date4  = Date.newInstance(2020, 03, 20);
    Date rtdt = VerifyDate.CheckDates(date1, date4);
        system.assertEquals(date4, rtdt);
    }
    @isTest 
    static void Test2(){
    Date date1 =  Date.newInstance(2020, 03, 18);
    Date dat130 = date1.addDays(30);
    Date dat1eom = Date.newInstance(2020, 03, 31);
    Date date2 = Date.newInstance(2020, 05, 18);
    Date date3 = Date.newInstance(2020, 03, 19);
        Date rtdt = VerifyDate.checkDates(date3,date1);
        system.assertEquals(dat1eom, rtdt);
    }
     @isTest 
    static void Test3(){
        Date date1 =  Date.newInstance(2020, 03, 18);
    Date dat130 = date1.addDays(30);
    Date dat1eom = Date.newInstance(2020, 03, 31);
    Date date2 = Date.newInstance(2020, 05, 18);
    Date date3 = Date.newInstance(2020, 02, 20);
        Date rtdt = VerifyDate.checkDates(date1,date3);
        system.assertEquals(dat1eom, rtdt);
    }
}