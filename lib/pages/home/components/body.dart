import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trace_mobile/style/color.dart';

import '../../../style/font/my_font.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Container(child: Text("这是首页"));
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(96.w, 205.w, 0, 0),
          width: 197.w,
          height: 103.h,
          child: Image.asset('assets/images/trace.png'),
        ),
        Container(
            decoration: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0, color: Colors.black),
              //insets: EdgeInsets.fromLTRB(0, 0, 0, 10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width:83.w,
                    height:35.h,
                    decoration: const BoxDecoration(
                      color: kThirdColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(12.0)),
                    ),
                    child: (DefaultText("小记"))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                  ],
                )
              ],
            ))
      ],
    );
  }
}
