import 'package:trace_mobile/pages/home/components/body.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

import '../components/default_body.dart';
import '../components/editing_body.dart';

class DefaultEditingController extends GetxController {
  int curPageIndex = 0;//0: default 1 :editing
  final pages = [
    const DefaultBody(),
    EditingBody(),
  ];

  late final pageController;
  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void navigateToPage(int pageIndex) {
    if ((pageIndex - curPageIndex).abs() == 2) {
      Future.delayed(const Duration(milliseconds: 400), () {
        curPageIndex = pageIndex;
        update();
      });
    }
  }

  void setCurPageIndex(int value) {
    curPageIndex = value;
    update();
  }
}