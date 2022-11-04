import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trace_mobile/style/color.dart';

import '../../../style/font/my_font.dart';
import '../../../utils/time.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
        //trace
        Container(
          // margin: EdgeInsets.fromLTRB(96.w, 205.w, 0, 0),
          margin: EdgeInsets.only(top: 205.h),
          width: 197.w,
          height: 103.h,
          child: Image.asset('assets/images/trace.png'),
        ),


        //心情提示框
        Container(
          margin: EdgeInsets.only(top:151.h),
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
                        alignment: Alignment.center, child: DefaultText("小记"))),
                Container(
                    width: 111.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubText(Time.getYMD()),
                        SubText(Time.getDayInWeek())
                      ],
                    ))
              ],
            )),

        // //心情grid
        // Column(
        //   children: [
        //     Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        //       GestureDetector(
        //         onTap: () => {},
        //         child: Container(
        //             width: 22.w,
        //             height: 22.h,
        //             child: SvgPicture.asset(
        //               "assets/icons/purple_mood.svg",
        //             )),
        //       ),
        //       GestureDetector(
        //         onTap: () => {},
        //         child: Container(
        //             width: 22.w,
        //             height: 22.h,
        //             child: SvgPicture.asset(
        //               "assets/icons/yellow_mood.svg",
        //             )),
        //       ),
        //       GestureDetector(
        //         onTap: () => {},
        //         child: Container(
        //             width: 22.w,
        //             height: 22.h,
        //             child: SvgPicture.asset(
        //               "assets/icons/purple_mood.svg",
        //             )),
        //       ),
        //       GestureDetector(
        //         onTap: () => {},
        //         child: Container(
        //             width: 22.w,
        //             height: 22.h,
        //             child: SvgPicture.asset(
        //               "assets/icons/yellow_mood.svg",
        //             )),
        //       ),
        //     ]),
        //   ],
        // ),
        //输入框
        SizedBox(
          height: 24.h,
        ),
        Container(
          padding:const EdgeInsets.fromLTRB(27,24,27,0),
          width: 358.w,
          height: 313.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(33)),
            color:kThirdColor,
          ),
          child:
          TextField(
            maxLines: 20,
            style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
            decoration: const InputDecoration(hintText: "开始记录些什么吧..."),
          ),
        )
      ],
    );
  }
}
