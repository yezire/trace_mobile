class Time{
  late DateTime dateTime;

  Time(){
    dateTime= DateTime.now();
  }

  String getYMD(){
    String ymd="${dateTime.year}.${dateTime.month}.${dateTime.day}";
    return ymd;
  }

  String getDayInWeek(){
    List<String> days =["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
   return days[dateTime.weekday];
  }
}