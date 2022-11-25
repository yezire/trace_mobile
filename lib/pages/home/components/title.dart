import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../style/color.dart';
import '../../../style/font/my_font.dart';
import '../../../utils/time.dart';
class PieceTitle extends StatelessWidget {
  const PieceTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       // margin: EdgeInsets.only(top: 151.h),
        width: 344.w,
        decoration: UnderlineTabIndicator(
          borderSide: BorderSide(width: 1.h, color: Colors.black),
          //insets: EdgeInsets.fromLTRB(0, 0, 0, 10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: EdgeInsets.only(left: 23.w),
                width: 83.w,
                height: 35.h,
                decoration: const BoxDecoration(
                  color: kThirdColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0)),
                ),
                child: Align(
                    alignment: Alignment.center, child: defaultText("小记"))),
            Container(
                width: 111.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    subText(Time.getYMD()),
                    subText(Time.getDayInWeek())
                  ],
                ))
          ],
        ));
  }
}
