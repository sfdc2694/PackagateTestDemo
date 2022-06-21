trigger ContactTrigger on Contact (after insert) {
// List Of account to insert
    list<Account> accListToInsert=new list<Account>();
    //Updated Package Version
    //Testing porpose ,
    //test Changes new version
    for(Contact con:Trigger.new){
        if(con.AccountID==null){
            Account acc=new Account();
            acc.Name=con.LastName;
            acc.Phone=con.Phone;
            accListToInsert.add(acc);
        }
    }
    If(!accListToInsert.isEmpty()){
        insert accListToInsert;
    }
}