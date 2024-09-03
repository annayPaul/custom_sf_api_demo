@RestResource(urlMapping='/v1/ServerTime/*')
global with sharing class MyServerTime {
    @HttpGet
    global static String doGet() {
        DateTime serverTime = DateTime.now();

        return serverTime.format('yyyy-MM-dd hh:mm:ss a');
    }
}