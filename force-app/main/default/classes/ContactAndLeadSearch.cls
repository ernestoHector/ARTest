public with sharing class ContactAndLeadSearch {
    public Static List<List<SObject>> searchContactsAndLeads(String s1) {
        return [Find :s1 in Name Fields Returning Contact(Id),Lead(Id) ];

    }
}