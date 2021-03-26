public with sharing class DailyLeadProcessor implements Schedulable {
    public void  execute(SchedulableContext ctx) {
        List<Lead> records = [select ID, LeadSource from Lead where LeadSource = null limit 200];

        for (Lead rec : records) {
            
           rec.LeadSource = 'DreamForce';
        }
        if (!records.isempty()) {
        update records;
        }


    }
}