public with sharing class MappingService {
    public void setDemo(){
      Organization orgDetails = [SELECT Id, Name, TimeZoneSidKey, SystemModstamp  FROM Organization WHERE Id = :UserInfo.getOrganizationId()];
      System.debug(orgDetails);
      String url = 'https://playful-shark-5hsln3-dev-ed.trailblaze.my.salesforce-sites.com/services/apexrest/v1/ServerTime';
      String versionEndpoint = url.substring(0, url.lastIndexOf('/'));

      String dateString1 = 'dd-MMMM-yyyy HH:mm:ss z';
      String dateString2 = 'dd-MMMM-yyyy  hh:mm:ss aaa';

      DateTime dt = System.now();
      System.debug('This is the First Format: ' + dt.format(dateString1, orgDetails.TimeZoneSidKey));
      System.debug('This is the Second Format: ' + dt.format(dateString2, orgDetails.TimeZoneSidKey));
      /*
            addDays(additionalDays)
            addHours(additionalHours)
            addMinutes(additionalMinutes)
            addMonths(additionalMonths)
            addSeconds(additionalSeconds)
            addYears(additionalYears)
            date()
            dateGMT()
            day()
            dayGmt()
            dayOfYear()
            dayOfYearGmt()
            format()
            format(dateFormatString)
            format(dateFormatString, timezone)
            formatGmt(dateFormatString)
            formatLong()
            getTime()
            hour()
            hourGmt()
            isSameDay(dateToCompare)
            millisecond()
            millisecondGmt()
            minute()
            minuteGmt()
            month()
            monthGmt()
            newInstance(milliseconds)
            newInstance(date, time)
            newInstance(year, month, day)
            newInstance(year, month, day, hour, minute, second)
            newInstanceGmt(date, time)
            newInstanceGmt(year, month, date)
            newInstanceGmt(year, month, date, hour, minute, second)
            now()
            parse(datetimeString)
            second()
            secondGmt()
            time()
            timeGmt()
            valueOf(dateTimeString)
            valueOf(fieldValue)
            valueOfGmt(dateTimeString)
            year()
            yearGmt()
      */
    }
}