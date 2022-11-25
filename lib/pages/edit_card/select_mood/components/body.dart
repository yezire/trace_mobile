import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../style/color.dart';
import '../../../../style/font/my_font.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  List<String> moodPics = [
    "assets/icons/sad_mood.svg",
    "assets/icons/happy_mood.svg",
    "assets/icons/shy_mood.svg",
    "assets/icons/work_mood.svg",
    "assets/icons/confusing_mood.svg",
    "assets/icons/angry_mood.svg",
    "assets/icons/exciting_mood.svg",
    "assets/icons/tired_mood.svg",
    "assets/icons/blank_mood.svg",
    "assets/icons/null_mood.svg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //  width: 304.w,
      child: Column(children: [
        Row(children: [
          Container(
            margin: EdgeInsets.fromLTRB(23.w, 66.h, 0, 0),
            width: 83.w,
            height: 31.h,
            decoration: BoxDecoration(
                color: kThirdColor,
                borderRadius: BorderRadius.circular((17.5))),
            child: defaultText("小记"),
          ),
        ]),
        SizedBox(height: 50.h),
        Row(children: [
          SizedBox(width: 42.w),
          defaultText("此刻的心情是..."),
        ]),
        SizedBox(
            width: 304.w,
            height: 270.h,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 36.09,
                  mainAxisSpacing: 19.28,
                  childAspectRatio: 1),
              itemCount: moodPics.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => {},
                  child: SvgPicture.asset(moodPics[index],
                      width: 41.28.w, height: 60.h),
                );
              },
            )),
        Padding(
            padding: EdgeInsets.only(top: 169.25.h),
            child: TextButton(
                onPressed: () => Get.back(),
                child: Container(
                    height: 55.h,
                    width: 86.w,
                    decoration: BoxDecoration(
                      color: kButtonColor,
                      // 底色
                      borderRadius: BorderRadius.circular((41.5)), // 圆角度
                    ),
                    child: SizedBox(
                      width:31.5.w,
                      child: SvgPicture.asset("assets/icons/vector.svg"),
                    ))))
      ]),
    );
  }
}
