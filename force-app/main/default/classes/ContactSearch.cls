public with sharing class ContactSearch {
    public Static List<Contact> searchForContacts(String ln, String pc) {
        List<Contact> cnts = [SELECT Id, Name  FROM Contact Where Lastname = :ln and MailingPostalCode = :pc ];
        return cnts;
    }
}