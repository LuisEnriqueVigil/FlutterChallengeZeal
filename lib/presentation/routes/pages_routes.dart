import 'package:challenge_app/presentation/pages/edit_user/binding/binding_edit_user.dart';
import 'package:challenge_app/presentation/pages/edit_user/pages/edit_user_page.dart';
import 'package:challenge_app/presentation/pages/home/binding/home_binding.dart';
import 'package:challenge_app/presentation/pages/home/pages/home_page.dart';
import 'package:challenge_app/presentation/pages/list_user/binding/binding_list_user.dart';
import 'package:challenge_app/presentation/pages/list_user/pages/list_user_page.dart';
import 'package:challenge_app/presentation/pages/new_user/binding/binding_new_user.dart';
import 'package:challenge_app/presentation/pages/new_user/pages/new_user_page.dart';
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
    ),
    GetPage(
      name: AppRoutes.listUsers,
      page: () => const ListOfAllUserPage(),
      binding: ListAllOfUsersBinding(),
    ),
    GetPage(
      name: AppRoutes.addNewUser,
      page: () => const NewUserPage(),
      binding: NewUserBinding(),
    ),
    GetPage(
      name: AppRoutes.editUser,
      page: () => const EditUserPage(),
      binding: EditUserBinding(),
    ),
   ];
}

