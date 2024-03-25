import 'package:get/get.dart';

import '../screens/login/login_view.dart';

class AppRoutes {
  static const initRoute = '/';
  static const homeRoute = '/homeView';
  static const loginViewRoute = '/loginView';
  static const registerViewRoute = '/registerView';
  static const signUpViewRoute = '/signUpView';
  static const forgotPasswordViewRoute = '/forgotPasswordView';

  List<GetPage> getRoutes() {
    return [
      GetPage(name: initRoute, page: () => LoginView()),
      GetPage(name: loginViewRoute, page: () => LoginView()),
    ];
  }
}
