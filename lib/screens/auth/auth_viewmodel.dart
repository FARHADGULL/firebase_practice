import 'package:get/get.dart';

class AuthViewModel extends GetxController {
  RxBool isSignup = true.obs;

  void toggleAuth() {
    isSignup.value = !isSignup.value;
  }
}
