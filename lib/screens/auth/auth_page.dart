import 'package:firebase_practice/screens/auth/auth_viewmodel.dart';
import 'package:firebase_practice/screens/auth/login/login_view.dart';
import 'package:firebase_practice/screens/auth/signup/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final AuthViewModel viewModel = Get.put(AuthViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(viewModel.isSignup.value ? 'Log In' : 'Sign Up')),
      ),
      body: Obx(
        () => viewModel.isSignup.value ? LoginView() : SignUpView(),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(viewModel.isSignup.value
                  ? 'Don\'t have an account?'
                  : 'Already have an account? '),
            ),
            TextButton(
              onPressed: viewModel.toggleAuth,
              child: Obx(
                () => Text(viewModel.isSignup.value ? 'Log In' : 'Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
