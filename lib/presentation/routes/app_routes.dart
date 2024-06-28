class AppRoutes {
  static final AppRoutes _appRoutes = AppRoutes._internal();
  
  factory AppRoutes() {
    return _appRoutes;
  }
  
  AppRoutes._internal();

  static const String home = "/home";
  static const String listUsers = "/list_users";
  static const String detailUser = "/detail_user";
  static const String editUser = "/edit_user"; 
  static const String addNewUser = "/add_new_user";


}