import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget DefaultText(String string) {
  return Text(string,
      style: (TextStyle(
       // fontStyle: ,
        fontSize: 19.sp,
        fontWeight: FontWeight.w500,
      )));
}

Widget SubText(String string) {
  return Text(string,
      style: (TextStyle(
        // fontStyle: ,
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
      )));
}