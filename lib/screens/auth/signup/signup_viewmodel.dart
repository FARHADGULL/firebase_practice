import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_practice/helpers/global_variable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpViewModel extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> signUp() async {
    GlobalVariable.showLoader.value = true;
    try {
      if (signUpFormKey.currentState?.validate() ?? true) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
      } else {
        GlobalVariable.showLoader.value = false;
        return;
      }
      emailController.clear();
      passwordController.clear();
      confirmPasswordController.clear();

      GlobalVariable.showLoader.value = false;
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );

      GlobalVariable.showLoader.value = false;
    }
  }
}
