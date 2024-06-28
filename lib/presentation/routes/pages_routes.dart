import 'package:challenge_app/presentation/pages/home/binding/home_binding.dart';
import 'package:challenge_app/presentation/pages/home/pages/home_page.dart';
import 'package:challenge_app/presentation/routes/app_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class PagesRoutes {
  static final PagesRoutes _pagesRoutes = PagesRoutes._internal();
  
  factory PagesRoutes() {
    return _pagesRoutes;
  }
  
  PagesRoutes._internal();

   static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    )
   ];
}

