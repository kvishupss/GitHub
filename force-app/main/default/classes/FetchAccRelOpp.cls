public with Sharing class FetchAccRelOpp {
    
    @AuraEnabled (cacheable=true)
    public static List<sObject> getAccounts(){
        
        List<Account> accList = new List<Account>([Select id, Name 
                                                   From Account limit 20]);
        system.debug(accList);
        return accList;
    }
    @AuraEnabled (cacheable=true)
    public static List<sObject> getRelOpportunity(String AccId){
        
        List<Opportunity> oppList = new List<Opportunity>([Select 
                                                           id,
                                                           AccountId,
                                                           Name, 
                                                           StageName From Opportunity 
                                                           Where AccountId =: AccId]);
        system.debug(oppList);
        return oppList;
    }   
    
}