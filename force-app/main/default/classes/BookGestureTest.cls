/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-09-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class BookGestureTest {
    @isTest
    static  void testApplyDiscount() {
        Book__c b = new Book__c(Name='Behind the Cloud', Price__c=100);
        System.debug('Price before applying discount: ' + b.Price__c);
        // Insert book
        insert b;
        List<Book__c> result = new List<Book__c>();
        result.add(b);
        BookGesture.applyDiscount(result);
        // Retrieve the new book
        b = [SELECT Price__c FROM Book__c WHERE Id =:b.Id];
        System.debug('Price after applying discount : ' + b.Price__c);
        System.assertEquals(90, b.Price__c);

    }
    @isTest
    static  void testApplyAddition() {
        Book__c b = new Book__c(Name='Behind the Cloud', Price__c=100);
        System.debug('Price before applying Addition: ' + b.Price__c);
        // Insert book
        insert b;
        List<Book__c> result = new List<Book__c>();
        result.add(b);
        BookGesture.applyAddition2(result);
        // Retrieve the new book
        b = [SELECT Price__c FROM Book__c WHERE Id =:b.Id];
        System.debug('Price after applying Addition : ' + b.Price__c);
        System.assertEquals(110, b.Price__c);

    }
    }