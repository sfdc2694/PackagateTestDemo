trigger NumberOFEmployees on Account (before update) {
    List<Contact> conListToCreate=new List<Contact>();
    for(Account acc:Trigger.New){
        IF (acc.NumberOfEmployees!=null){
            for(Integer i=0;i<acc.NumberOfEmployees;i++){
                Contact cont=new Contact();
                cont.LastName='Create Contact'+i;
                cont.AccountId=acc.id;
                conListToCreate.add(cont);
            }
        }
    }
    //test
    //Branch2
    //branch 3
    system.debug('conListToCreate '+conListToCreate);
    insert conListToCreate;
}