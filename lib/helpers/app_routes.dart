import 'package:firebase_practice/screens/auth/signup/signup_view.dart';
import 'package:get/get.dart';

import '../screens/home/home_view.dart';
import '../screens/auth/login/login_view.dart';

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
      GetPage(name: homeRoute, page: () => HomeView()),
      GetPage(name: signUpViewRoute, page: () => SignUpView()),
    ];
  }
}
