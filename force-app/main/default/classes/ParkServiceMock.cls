@isTest
global class ParkServiceMock implements WebServiceMock {

    global void doInvoke(
    	   Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) 
    {
       ParkService.byCountryResponse responses = 
            new ParkService.byCountryResponse();
            
        List<String> myStrings = new List<String> {'Park1','Park2','Park3'};
    
        responses.return_x = myStrings;
        // end
        response.put('responses', responses); 
   } }