public  class LeadProcessor implements Database.Batchable<SObject> {
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT ID, LeadSource FROM Lead' 
        );
    }
    public void execute(Database.BatchableContext bc, List<Lead> scope){
        List<Lead> leads = new List<Lead>();
        for (Lead lead : scope) {
            Lead.LeadSource = 'DreamForce';
            leads.add(lead);
        }
        update leads;    
        }

        public void finish(Database.BatchableContext bc){
                System.debug('finish');
        }
  
}