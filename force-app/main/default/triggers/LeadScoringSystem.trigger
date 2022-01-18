trigger LeadScoringSystem on Task (after delete, after insert, after undelete, after update) {

Set<ID> LeadIds = new Set<ID>();

//We only care about tasks linked to Leads.

String leadPrefix = Lead.SObjectType.getDescribe().getKeyPrefix();

//Add any Lead ids coming from the new data

if(trigger.new!=null){
    for (Task t : Trigger.new) {
     if (t.WhoId!= null && string.valueof(t.WhoId).startsWith(leadPrefix) ) {

if(!LeadIds.contains(t.WhoId)){
//adding unique lead ids since there can be many tasks with single lead
LeadIds.add(t.WhoId);
}
}
}
}
 
//Also add any Lead ids coming from the old data (deletes, moving an activity from one Lead to another)

if(trigger.old!=null){
    for (Task t2 : Trigger.old) {
     if (t2.WhoId!= null && string.valueof(t2.WhoId).startsWith(leadPrefix) )
         {
if(!LeadIds.contains(t2.WhoId)){
//adding unique lead ids since there can be many tasks with single lead
LeadIds.add(t2.WhoId);
}
}
      }
}

     if (LeadIds.size() > 0){



List<Lead> leadsWithTasks = [select id,Lead_Score__c,(select id from Tasks) from Lead where Id IN : Leadids];

List<Lead> leadsUpdatable = new List<Lead>();

for(Lead L : leadsWithTasks){

L.Lead_Score__c = L.Tasks.size();
leadsUpdatable.add(L);

}

if(leadsUpdatable.size()>0){

update leadsUpdatable;
//update all the leads with activity count

}

}
}