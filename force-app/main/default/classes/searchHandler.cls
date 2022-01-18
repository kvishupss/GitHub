public with sharing class searchHandler {
    
    @AuraEnabled(cacheable=true)
    public static list<Account> getAccList(string text) {
        string searchText = '%' + text + '%';
        
        list<Account> AccList = new list<Account>([Select id,Name,Rating From Account WHERE name LIKE : text]);
        for(Account acc : AccList )
        {
            AccList.add(acc);
        }
	return AccList;
    }
}