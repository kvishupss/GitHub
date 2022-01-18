public class Pattern1
{
public static List<Integer> reverseTriangle (Integer n)
    {

        String revTri = '';

for (Integer i = 1; i <= n; i++)
 {
   for (Integer j = i; j <= n; i++)
 {
   if (j<=i)
   revTri +='*';
   else
   revTri+='*';
 }
   revTri+='\n';
 }   

   System.debug('ReverserTriangle: \n' + revTri);
          
        return null;
    }
}