class Time{
  static DateTime dateTime=DateTime.now();


static  String getYMD(){
    String ymd="${dateTime.year}.${dateTime.month}.${dateTime.day}";
    return ymd;
  }

 static String getDayInWeek(){
    List<String> days =["","周一", "周二", "周三", "周四", "周五","周六"];
   return days[dateTime.weekday];
  }
}