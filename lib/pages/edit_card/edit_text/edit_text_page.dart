import 'package:flutter/material.dart';

import '../../../style/color.dart';
import 'body.dart';

class EditTextPage extends StatelessWidget {
  const EditTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios, color: Colors.black),
          actions: [
            Text("编 辑",
              style: (TextStyle(
                  color: Color.fromRGBO(104, 104, 104, 1),
                  fontFamily: 'NotoSerifSC',
                  fontSize: 14))),],

        ),
        body: Container(
          color: kBackground,
          child: Body(),
        ));
  }
}

//rgba(104, 104, 104, 1)
