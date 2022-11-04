import 'package:flutter/material.dart';
import 'package:trace_mobile/pages/user/components/body.dart';
class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
