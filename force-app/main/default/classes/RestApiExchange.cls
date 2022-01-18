public class RestApiExchange {
    public static String getExchangeRates(){
        http http = new http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://www.alphavantage.co/query?function=FX_INTRADAY&from_symbol=EUR&to_symbol=USD&interval=5min&apikey=QQ03TWOCON97MS9M');
         request.setMethod('GET');
        HttpResponse response = http.send(request);
        string strMod = '';
        system.debug(response.getBody());
        system.debug(response.getStatusCode());
        
        if(response.getStatusCode() == 200){
            Map<String , Object> result = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
          
        }
        return strMod;
    }

}