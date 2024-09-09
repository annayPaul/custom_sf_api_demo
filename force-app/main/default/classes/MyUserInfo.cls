@RestResource(urlMapping='/myuser/*')
global with sharing class MyUserInfo {
    @HttpGet
    global static String doGet(){
        String type = 'Type: ' + UserInfo.getUserType();
        String name = 'Name: ' + UserInfo.getName();
        String orgId = 'Org Id: ' + UserInfo.getOrganizationId();
        String profileId = 'Profile Id: ' + UserInfo.getProfileId();
        type += '     ' + name;
        type += '     ' + orgId;
        type += '     ' + profileId;
        return type;
    }
}