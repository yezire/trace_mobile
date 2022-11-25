import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../style/color.dart';
import 'components/default_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color:kBackground,
        child:
      Stack(
          children: [
            Positioned(
              left: 21.w,
              child:DefaultBody(),
            ),
          Positioned(
            height:67.h,
              width:358.w,
              left:16.w,
              top:749.h,
              child:Material(
                color:Colors.black,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                elevation: 3,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      IconButton(
                        icon:Icon(Icons.home_filled,color:Colors.white),
                        onPressed:(){}
                      ),
                      IconButton(

                          icon:Icon(Icons.dataset,color:Colors.white),
                          onPressed:(){}
                      ),
                      IconButton(
                          icon:Icon(Icons.person,color:Colors.white),
                          onPressed:(){}
                      )
                    ],
                  )
              )
              )
        ],
      ),
      ));
  }
}
