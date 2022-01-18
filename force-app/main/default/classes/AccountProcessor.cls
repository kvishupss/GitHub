public class AccountProcessor {
    
    @future
    public static void countContacts(List<Id> accId){
        List<Account> accounts = [Select Id, Number_Of_Contacts__c, name From Account where Id IN: accId];
        system.debug('Accounts'+Accounts);
        for(Account acc : accounts){
            
            List<Contact> con = [Select Id from Contact where Id =: acc.Id];
            system.debug('Con'+Con);
            acc.Number_Of_Contacts__c = con.size();
          system.debug('Number of Contact'+acc.Number_Of_Contacts__c);
           
            
        }
        
        
    }

}