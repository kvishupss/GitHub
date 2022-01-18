public class AccountHandler {
    public static Account insertNewAccount(string name){
        Account acc = new Account();
    acc.Name= name;
    try{
    insert acc;
    return acc;
    }
    catch(DmlException e){
        system.debug('A DML exception has occurred: ' + e.getMessage());
        return null;
    }
}
}