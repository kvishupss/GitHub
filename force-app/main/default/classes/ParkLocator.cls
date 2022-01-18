public class ParkLocator  {
    public static string [] country (string cntr){
        ParkService.ParksImplPort park = new ParkService.ParksImplPort();
        return park.byCountry(cntr);
    }
}