import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trace_mobile/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(391, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: "Noto_Serif_SC",
              // scaffoldBackgroundColor: Colors.white,
              // visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            initialRoute:
           Routes.homePage,
            // initialRoute: Routes.homeScreen,
            getPages: AppPages.pages,
            defaultTransition: Transition.fade,
            // builder: EasyLoading.init(),
          );
        });
  }
}

