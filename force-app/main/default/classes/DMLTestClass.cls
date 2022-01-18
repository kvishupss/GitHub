public class DMLTestClass {
    public static void test(){
        List<Account> acnt = new List<Account>();
            
            for(integer i = 1; i<=20; i++)
            {
                Account a = new Account (Name = 'DML Sample ' + i);
                acnt.add(a);
            }insert acnt;
    }

}