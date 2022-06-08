/**
* @description       : 
* @author            : ChangeMeIn@UserSettingsUnder.SFDoc
* @group             : 
* @last modified on  : 06-07-2022
* @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public without sharing class BookGesture {
    public static void applyDiscount(Book__c[] books) {
        List<Book__c> result = new List<Book__c>();
        for (Book__c b :books){
            b.Price__c *= 0.9;
            result.add(b);
        }
        if (Schema.sObjectType.Book__c.fields.Price__c.isUpdateable()) {
            update(result);
        }
    }
    public static void applyAddition2(Book__c[] books) {
        List<Book__c> result = new List<Book__c>();
        for (Book__c b :books){
            b.Price__c *= 1.1;
            result.add(b);
        }
        if (Schema.sObjectType.Book__c.fields.Price__c.isUpdateable()) {
            update(result);
        }
        
        
        
        
    }
    
    
}