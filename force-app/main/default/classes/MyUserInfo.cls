@RestResource(urlMapping='/myuser/*')
global with sharing class MyUserInfo {
    @HttpGet
    global static String doGet(){
        String type = 'Type: ' + UserInfo.getUserType();
        String name = 'Name: ' + UserInfo.getName();
        return type + name;
    }
}