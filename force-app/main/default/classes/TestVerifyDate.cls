@isTest
public class TestVerifyDate {
    @isTest static void CheckDates(){
        Date chkdt = verifydate.CheckDates(date.today(), date.today().addDays(-1));
        System.assertEquals(date.newInstance(2021, 1, 31), chkdt);
    }
    @isTest static void DateWithin30days (){
         Date chkdt = verifydate.CheckDates(date.today(), date.today().addDays(15));
        System.assertEquals(date.today().addDays(15) , chkdt);

}
    @isTest static void DateMoreThan30days (){
         Date chkdt = verifydate.CheckDates(date.today(), date.today().addDays(31));
        System.assertEquals(date.newInstance(2021, 1, 31), chkdt);
}
}