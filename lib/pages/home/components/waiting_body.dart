import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trace_mobile/pages/home/components/title.dart';

import '../../../style/font/my_font.dart';

class WaitingBody extends StatelessWidget {
  const WaitingBody({Key? key}) : super(key: key);

  //controller :判断当前是有心情还是无心情

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //trace
        Container(
          margin: EdgeInsets.only(top: 127.h),
          width: 197.w,
          height: 103.h,
          child: Image.asset('assets/images/trace.png'),
        ),
        //心情提示框
        SizedBox(
          height: 59.h,
        ),
        const PieceTitle(),
        SizedBox(
          height: 28.h,
        ),
        //card
        Row(children: [
          //icon
          Padding(
            padding: EdgeInsets.only(left: 11.93.w),
            child: GestureDetector(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => Get.toNamed("/selectPage"),
                    child: SizedBox(
                        width: 62.08.w,
                        height: 63.h,
                        child: SvgPicture.asset(
                          "assets/icons/happy_mood.svg",
                        )),
                  ),
                  thirdText("2022-11-4"),
                  thirdText("20:05"),
                ],
              ),
            ),
          ),
          //text

          GestureDetector(
              onTap: () => Get.toNamed("editTextPage"),
              child: Container(
                  padding: EdgeInsets.only(right: 0.w),
                  width: 246.91.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                    color: Colors.white, // 底色
                    borderRadius: BorderRadius.circular((33.0)), // 也可控件一边圆角大小
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 220.w,
                          child: subText(
                              "人生这条路很长，未来星辰大海般璀璨，不必踌躇于过去的半亩方塘，那些所谓的遗憾，可能是一种成长，那些曾受过的伤，终会化作照亮前路的光。总有..."),
                        )
                      ])))
        ]),
        //waiting
        SizedBox(height: 28.h),
        GestureDetector(
          onTap: () =>Get.toNamed("/recommendPage"),
          child:
        Container(
          width: 344.w,
          height: 63.h,
          decoration: BoxDecoration(
            color: Colors.white, // 底色
            borderRadius: BorderRadius.circular((33.0)), // 也可控件一边圆角大小
          ),
          child:
              Align(alignment: Alignment.center, child: subText("正在获取推荐内容...")),
        ))
      ],
    );
  }

  Widget cardWithMood() {
    return Container(
      height: 150.h,
      width: 344.w,
      child: Row(children: [
        //icon
        Padding(
          padding: EdgeInsets.only(left: 21.93.w),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => {},
                child: SizedBox(
                    width: 52.08.w,
                    height: 53.h,
                    child: SvgPicture.asset(
                      "assets/icons/happy_mood.svg",
                    )),
              ),
              thirdText("2022-11-4"),
              thirdText("20:05"),
            ],
          ),
        ),
        //text
        Container(
            padding: EdgeInsets.only(right: 0.w),
            //todo:换行
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      defaultText(
                          "人生这条路很长，未来星辰大海般璀璨，不必踌躇于过去的半亩方塘，那些所谓的遗憾，可能是一种成长，那些曾受过的伤，终会化作照亮前路的光。总有..."),
                    ],
                  ),
                ),
              ],
            ))
      ]),
    );
  }

// Widget cardWithout() {
//   return Row(
//     children: [
//       Row(children: [
//         thirdText("2022-11-4"),
//         thirdText("20:05"),
//       ]),
//       //text
//       Container(
//         child: defaultText(
//             "人生这条路很长，未来星辰大海般璀璨，不必踌躇于过去的半亩方塘，那些所谓的遗憾，可能是一种成长，那些曾受过的伤，终会化作照亮前路的光。总有..."),
//       )
//     ],
//   )
//   );
// }
}
