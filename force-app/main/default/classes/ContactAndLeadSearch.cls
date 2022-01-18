public class ContactAndLeadSearch {

    public static List<List<SObject>> searchContactsAndLeads(string lname){
        List<List<sObject>> searchList = [FIND :lname IN ALL FIELDS 
                   RETURNING Lead(FirstName,LastName),Contact(FirstName,LastName)];
Lead[] searchLeads = (Lead[])searchList[0];
Contact[] searchContacts = (Contact[])searchList[1];
System.debug('Found the following Contacts.');
for (Contact c : searchContacts) {
    System.debug(c.LastName + ', ' + c.FirstName);
}
System.debug('Found the following Leads.');
for (Lead l : searchLeads) {
    System.debug(l.LastName + ', ' + l.FirstName);
}
       return searchList; 
    }
}