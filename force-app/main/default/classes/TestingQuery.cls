public class TestingQuery {
    public void listofrecords(){
        
        list<OpportunityContactRole> lstcon = new list<OpportunityContactRole> ([select ContactId , OpportunityId
                                                                                 From OpportunityContactRole]);
      system.debug(lstcon);   
    }
 
}