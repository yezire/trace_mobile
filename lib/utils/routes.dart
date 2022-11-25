import 'package:get/get_navigation/src/routes/get_route.dart';

import '../pages/edit_card/edit_text/edit_text_page.dart';
import '../pages/home/components/editing_page.dart';
import '../pages/home/components/waiting_page.dart';
import '../pages/home/home_page.dart';
import '../pages/edit_card/select_mood/select_page.dart';
import '../pages/recommend/recommend_page.dart';

class Routes {
  static const homePage = '/homePage';
  static const editingPage = '/editingPage';
  static const waitingPage = '/waitingPage';
  static const selectPage = '/selectPage';
  static const editTextPage = '/editTextPage';
  static const recommendPage='/recommendPage';
}

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.homePage,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.editingPage,
      page: () => const EditingPage(),
    ),
    GetPage(
      name: Routes.waitingPage,
      page: () => const WaitingPage(),
    ),
    GetPage(
      name: Routes.selectPage,
      page: () => const SelectPage(),
    ),
    GetPage(
      name: Routes.editTextPage,
      page: () => const EditTextPage(),
    ),
    GetPage(
      name: Routes.recommendPage,
      page: () => const RecommendPage(),
    ),
  ];
}
