trigger SoqlTriggerBulk on Account (after update) {
    
    List<Account> accwithopp  =  [SELECT Id,(SELECT Id,Name,CloseDate FROM Opportunities) 
                                        FROM Account WHERE Id IN :Trigger.New];
        
    for(Account a : accwithopp){
        opportunity[] relatedopp = a.opportunities;
    }
        

}