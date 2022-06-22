/**
* @description       : 
* @author            : ChangeMeIn@UserSettingsUnder.SFDoc
* @group             : 
* @last modified on  : 06-15-2022
* @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public without sharing class BookGesture {
    // aplying discount
    public static void applyDiscount(Book__c[] books) {
        List<Book__c> result = new List<Book__c>();
        for (Book__c bk :books){
            bk.Price__c *= 0.9;
            res.add(bk);
        }
        if (Schema.sObjectType.Book__c.fields.Price__c.isUpdateable()) {
                update(res);
            }
        
    }
    public static void applyAddition2(Book__c[] books) {
        List<Book__c> result = new List<Book__c>();
        for (Book__c book :books){
            book.Price__c *= 1.1;
            result.add(book);
        }
        if (Schema.sObjectType.Book__c.fields.Price__c.isUpdateable()) {
            update(result);
        }
        
        
        
        
    }
    
    
}