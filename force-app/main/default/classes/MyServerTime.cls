@RestResource(urlMapping='/ServerTime/*')
global with sharing class MyServerTime {
    @HttpGet
    global static String doGet() {
        RestRequest req = RestContext.request;
        String versionId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        String dateString1 = 'dd-MMMM-yyyy HH:mm:ss z';
        String dateString2 = 'dd-MMMM-yyyy  hh:mm:ss aaa';
        DateTime serverTime = System.now();

        if(versionId.equals('v1')){
            return serverTime.format(dateString1); // v1 24h
        }
        if(versionId.equals('v2')){
            return serverTime.format(dateString2); // v2 returns am/pm
        }
        
        return 'Wrong version';
    }
}