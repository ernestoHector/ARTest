public with sharing class AccountHandler {
   
        public static Account insertNewAccount(String identifier) {
           
            Account na = new Account(Name= identifier);
            try {
                insert na;
        } catch (Exception e) {
             na = null;
        }
         return na; 
        }

    
}