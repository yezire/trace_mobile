import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget defaultText(String string) {
  return Text(string,
      textAlign: TextAlign.center,
      style: (TextStyle(
       // fontStyle: ,
        fontFamily: 'NotoSerifSC',
        fontSize: 19.sp,
        color:Colors.black,
        fontWeight: FontWeight.w500,
      )));
}

Widget subText(String string) {
  return Text(string,
      style: (TextStyle(
        // fontStyle: ,
        fontFamily: 'NotoSerifSC',
        fontSize: 13,
        fontWeight: FontWeight.w400,
      )));
}

Widget thirdText(String string) {
  return Text(string,
      style: (TextStyle(
        // fontStyle: ,
        fontFamily: 'NotoSerifSC',
        fontSize: 9.sp,
        fontWeight: FontWeight.w400,
      )));
}