import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/default_editing_controller.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DefaultEditingController>(
        init: DefaultEditingController(),
        builder: (controller) {
          return PageView.builder(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.setCurPageIndex(index);
            },
            itemCount: controller.pages.length,
            itemBuilder: (context, index) => controller.pages[index],
          );
        });
  }
}
