import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trace_mobile/pages/home/components/title.dart';

class DefaultBody extends StatelessWidget {
  const DefaultBody({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
        child: Column(
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
        SizedBox(height: 140.h),
        //心情提示框
        const PieceTitle(),

        SizedBox(
          height: 24.h,
        ),
        GestureDetector(
            onTap: () => Get.toNamed("/editingPage"),
            child: Container(
                padding: const EdgeInsets.fromLTRB(27, 24, 27, 0),
                width: 358.w,
                height: 313.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(33)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: TextField(
                    maxLines: 5,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'NotoSerifSC'),
                    decoration: const InputDecoration(
                        hintText: "开始记录些什么吧...", border: InputBorder.none),
                  ),
                )))
      ],
    ));
  }
}
