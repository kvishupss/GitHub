trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
   List<Task> t1 = new List<Task>(); 
    for(Opportunity opp :  Trigger.New )
    {
        if (opp.stageName == 'Closed Won')
        {
            Task t = new Task();
            
            t.WhatId = Opp.Id;
            t.subject = 'Follow Up Test Task';
            t1.add(t);
        
    }

    }insert t1;
}