public with sharing class AccountProcessor {
   @future
    public  static void countContacts(List<Id> accountIDs) {
        List<Account> accToUpdate = new List<Account>();
        List<Account> lstAccounts = [SELECT ID,(SELECT Id FROM Contacts) FROM Account where ID IN :accountIDs];
            for (ACCOUNT  acc : lstAccounts) {
                
                List<Contact> lstContacts = acc.Contacts;
                system.debug('contacts '+lstContacts.size());
                system.debug ('acc ' + acc);
                if (lstContacts.size() > 0 ){
                    
                    acc.Number_of_Contacts__c = lstContacts.size();
                  
                    accToUpdate.add(acc);
                }
            }
               system.debug('acctoUpdate ' + accToUpdate);
            if (accToUpdate.size() > 0 ) {
                update accToUpdate;
            }
            
        
    }
}