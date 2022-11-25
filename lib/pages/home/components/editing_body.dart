import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../style/color.dart';
import '../../../style/font/my_font.dart';

class EditingBody extends StatelessWidget {
  EditingBody({Key? key}) : super(key: key);

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
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(12.w, 65.h, 0, 0),
          child: Row(children: [
            Container(
              margin: EdgeInsets.only(left: 23.w),
              width: 83.w,
              height: 31.h,
              decoration: BoxDecoration(
                  color: kThirdColor,
                  borderRadius: BorderRadius.circular((17.5))),
              child: defaultText("小记"),
            ),
          ]),
        ),
        // MoodRow(),
        SizedBox(
            width: 358.w,
            height: 190.h,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 27.07,
                  mainAxisSpacing: 10,
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
        SizedBox(
          height: 10.h,
        ),
        Stack(
          children: [
            //position
            Container(
                padding: const EdgeInsets.fromLTRB(27, 24, 27, 0),
                width: 358.w,
                // height: 313.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(33)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: TextField(
                    maxLines: 25,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'NotoSerifSC'),
                    decoration: const InputDecoration(
                        hintText: "开始记录些什么吧...", border: InputBorder.none),
                  ),
                )),
            Positioned(
                left: 258.w,
                bottom: 94.h,
                child: TextButton(
                    onPressed:()=>Get.toNamed("/waitingPage"),
                    child: InkWell(
                      child: Container(
                        width: 73.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: kThirdColor,
                            borderRadius: BorderRadius.circular((17.5))),
                        child: defaultText("完成"),
                      ),
                    )))
          ],
        )
      ],
    );
  }
}
