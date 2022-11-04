
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../pages/home/home_page.dart';

class Routes {
  static const homePage='/homePage';

}

class AppPages{
  static final pages=[
    GetPage(
      name:Routes.homePage,
      page:()=>const HomePage(),
    )
  ];
}