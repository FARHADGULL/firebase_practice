import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_practice/helpers/global_variable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> signInFormKey = GlobalKey<
      FormState>(); //why we use formKey? to validate the form fields in the form widget and to save the form fields in the form widget to the database.

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> signIn() async {
    GlobalVariable.showLoader.value = true;
    try {
      if (signInFormKey.currentState?.validate() ?? true) {
        await _firebaseAuth.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
      }

      GlobalVariable.showLoader.value = false;
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        'Error',
        e.message.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );

      GlobalVariable.showLoader.value = false;
    }
  }
}
