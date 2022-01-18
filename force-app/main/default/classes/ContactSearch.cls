public class ContactSearch {
    public static List<Contact> searchForContacts(string lName, string mPCode){
        return[select lastName, MailingPostalCode From Contact order by LastName, MailingPostalCode];
    }

}