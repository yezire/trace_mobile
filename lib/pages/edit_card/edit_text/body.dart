import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../style/color.dart';
import '../../../style/font/my_font.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 344.w,
      child:
      Column(
crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Padding(
            padding: EdgeInsets.only(top: 70.h),
            child: Stack(children: [

              Container(
                  width: 344.w,
                  height: 319.h,
                  decoration: BoxDecoration(
                    color: Colors.white, // 底色
                    borderRadius: BorderRadius.circular((33.0)), // 圆角度
                  ),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(130.w, 9.h, 0, 0),
                      padding: EdgeInsets.only(right: 40.w),
                      child: subText("2022-11-4 20:05"),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 14.h),
                        width: 284.w,
                        child: subText(
                            "人生这条路很长，未来星辰大海般璀璨，不必踌躇于过去的半亩方塘，那些所谓的遗憾，可能是一种成长，那些曾"
                            "受过的伤，终会化作照亮前路的光。总有一天你会明白真正能治愈你的，从来不是时间，而是你心里那段释怀和格局，只要你的心不慌乱，连世界都难影响你。我们唯一应该厌倦的，是那些黯淡无光的日子，改变自己内心是第一步，把思想化作行动，拥"
                            "有独立人格，提升自己，幸福会如阳光一样，出现在黎明破晓时刻。\“艰难困苦，玉汝于成\” ")),
                  ])),
              Positioned(
                  left: 57.w,
                  top: -16.h,
                  child: SvgPicture.asset("assets/icons/happy_mood.svg"))
            ])),
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
                      width: 31.5.w,
                      child: SvgPicture.asset("assets/icons/confirm.svg"),
                    ))))
      ]
      ),
    );
  }
}
