trigger HelloWorldTrigger on Account (before insert) {
    for(Account a : Trigger.new){
        a.Description = 'This is a testing quote. :)';
  
    }
    
}