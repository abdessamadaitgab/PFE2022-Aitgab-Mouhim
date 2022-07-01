/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger accountAdd on Account (before insert) {
//Check for all the new account record in for loop
for(Account a : Trigger.New)
{
//Query
 List<Account> mynew = [SELECT Id, Name FROM Account WHERE                                                      Name= :a.Name];
 if(mynew.size() > 0)
 {
//Add Error message if there is record after querying 
  a.Name.addError('Account with name is existing'); 
 }
}
}