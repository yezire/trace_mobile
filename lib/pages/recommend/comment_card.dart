import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/color.dart';
import '../../style/font/my_font.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

        child: Row(children: [
          Container(
            width: 19,
            height: 19,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000), color: kButtonColor),
          ),
         Container(
             height: 84.h,
             width: 305.w,
             child: Column(
            children: [
              SizedBox(
                width: 104.w,
                height: 27.h,
                child: thirdText("2022.11.4   19：00"),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: subText(
                      "未来星辰大海般璀璨，不必踌躇于过去的半亩方塘，那些曾受过的伤，终会化作光照亮前方的路。"))
            ],
          ))
        ]));
  }
}
