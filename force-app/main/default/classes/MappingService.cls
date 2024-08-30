public with sharing class MappingService {

    public void variablePasser(){
        String str = 'String';
        Account acc = new Account();
        System.debug('String BEFORE:::' + str);
        System.debug('Account BEFORE:::' + acc);
        passValues(str, acc);
        System.debug('String AFTER:::' + str);
        System.debug('Account AFTER:::' + acc);
    }

    public void passValues(String value, Account reference){
        value = 'Changed String';
        reference.name = 'New Name';
        reference.site = 'www.example-site.com';
    }
}