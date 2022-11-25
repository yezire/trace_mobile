import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../style/font/my_font.dart';
import 'comment_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //content
        Container(
          margin: EdgeInsets.fromLTRB(42.w, 0, 42.w, 0),
          child: defaultText(
              " \“苦难既然把我推倒了悬崖的边缘，那么就让我在这悬崖的边缘坐下来，顺便看看悬崖下的流岚雾霭唱支歌给你听\” "),
        ),
        //name
        Container(
          margin: EdgeInsets.fromLTRB(175.w, 28.h, 0, 0),
          child: subText("———" "《我与地坛》"),
        ),
        //author
        Container(
          margin: EdgeInsets.fromLTRB(211.w, 3.h, 0, 0),
          child: subText("史铁生"),
        ),
        const CommentCard(),
        SizedBox(
          height:153.h,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            children: [
              SizedBox(
                  width: 17.w,
                  height: 17.h,
                  child: SvgPicture.asset("assets/icons/pen.svg")),
              Container(
                margin:EdgeInsets.only(left:24.88.w),
                  width: 51.w,
                  height: 35.h,
                  child: const Text("随 笔",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'NotoSerifSC',
                        fontWeight: FontWeight.w400,
                      ))),
            ],
          ),

          Row(children: [
            SizedBox(
                width: 17.w,
                height: 17.h,
                child: SvgPicture.asset("assets/icons/favorite.svg")),
            Container(
                margin:EdgeInsets.only(left:24.88.w),
                width: 51.w,
                height: 35.h,
                child: const Text("收 藏",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'NotoSerifSC',
                      fontWeight: FontWeight.w400,
                    ))),
          ]),

        ])
      ],
    );
  }
}
