public with sharing class AddPrimaryContact Implements Queueable {
    private Contact contact;
    private String statecode;
    public AddPrimaryContact(Contact record, String state) {
        this.contact = record;
        this.statecode = state;
    }
    public void execute(QueueableContext context) {
        List<Account> accts = [select ID from Account where billingstate = :statecode ];
        List<contact> insContacts = new List<Contact>();

        for (account  acct : accts) {
           
                    Contact newcnt = this.contact.clone(false);
                    newcnt.Account = acct;
                    insContacts.add(newcnt);

                
            }
          
            
        
        if ( !insContacts.isEmpty()){
            insert insContacts;
            }
    }

}