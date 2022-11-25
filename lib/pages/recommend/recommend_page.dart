import 'package:flutter/material.dart';
import '../../style/color.dart';
import 'body.dart';
class RecommendPage extends StatefulWidget {
  const RecommendPage({Key? key}) : super(key: key);

  @override
  _RecommendPageState createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kBackground,
      appBar:AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        leading:const Icon(Icons.arrow_back_ios,color:Colors.black),
        actions:const [
          Align(
            alignment: Alignment.center,
              child:Text(
            "2022.11.4     "
             ,   style:TextStyle(
            fontSize: 17,
            color:Colors.black,
            fontFamily: 'NotoSerifSC',
            fontWeight: FontWeight.w400,
          )
          ))
        ]
      ),
      body:Body(),

    );

  }

}
