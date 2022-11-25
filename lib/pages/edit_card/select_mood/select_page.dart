import 'package:flutter/material.dart';

import '../../../style/color.dart';
import 'components/body.dart';

class SelectPage extends StatelessWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:kBackground,
          child:Body(),
      )
    );
  }
}
