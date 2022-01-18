public class StringArrayTest
{
    public static List<string> generateStringArray (Integer n)
    {
        List<string> testing = new List<string>();
        for(Integer i = 0; i < n; i++)
        {
            testing.add('Test ' + i);
            system.debug(testing[i]);
    }
        return testing;
        }
     
}