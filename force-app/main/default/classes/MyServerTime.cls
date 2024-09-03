@RestResource(urlMapping='/ServerTime/*')
global with sharing class MyServerTime {
    public static void showLogs(){
        String dateString1 = 'dd-MMMM-yyyy HH:mm:ss z';
        String dateString2 = 'dd-MMMM-yyyy  hh:mm:ss aaa';
        DateTime serverTime = System.now();
    }
    @HttpGet
    global static String doGet() {
        Organization orgDetails = [SELECT Id, Name, TimeZoneSidKey, SystemModstamp  FROM Organization WHERE Id = :UserInfo.getOrganizationId()];

        RestRequest req = RestContext.request;
        String versionId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        String dateString1 = 'dd-MMMM-yyyy HH:mm:ss z';
        String dateString2 = 'dd-MMMM-yyyy  hh:mm:ss aaa';
        DateTime serverTime = System.now();
        if(versionId.equals('v1')){
            return serverTime.format(dateString1, orgDetails.TimeZoneSidKey); // v1 24h
        }
        if(versionId.equals('v2')){
            return serverTime.format(dateString2, orgDetails.TimeZoneSidKey); // v2 returns am/pm
        }
        
        return 'Wrong Response';
    }
}