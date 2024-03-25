import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> signInFormKey = GlobalKey<
      FormState>(); //why we use formKey? to validate the form fields in the form widget and to save the form fields in the form widget to the database.

  Future<void> signIn() async {
    if (signInFormKey.currentState?.validate() ?? false) {
      Get.snackbar('Success', 'Form is validated');

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    }
  }
}
