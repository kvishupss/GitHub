@istest
Private class TestRestrictContactByName {
    
    
    @isTest static void TestContactWithValidData() {
     List<Contact> Con = new List<Contact>();
		con.add(new Contact(LastName='Smith'));
		con.add(new Contact(LastName='INVALIDNAME'));
       // Contact c = new Contact(LastName = 'INVALIDNAME');
         
        Database.SaveResult [] results = Database.insert(con, false);
        
        for (Database.SaveResult result : results) {
    if (result.isSuccess()) {
        //Successfully inserted
        //Handle insertion
        System.debug('Contact Successfully inserted.');
    }
    else {
        //Error ecountered              
        for(Database.Error error : result.getErrors()) {
            //Handle error
             System.debug(error.getStatusCode() + ': ' + error.getMessage() + 
                          ' Fields that affected the error: ' + error.getFields());

        }
    }
}
    }
}
/*
        Test.startTest();
        Database.SaveResult result = Database.insert(con, false);
        Test.stopTest();
        
    
        System.assert(!result.isSuccess());
        
    }
    
}*/