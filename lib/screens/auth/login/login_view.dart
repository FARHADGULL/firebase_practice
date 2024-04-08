import 'package:firebase_practice/screens/auth/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/loader_view.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final LoginViewModel loginViewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Login'),
      // ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 25),
              child: Form(
                key: loginViewModel.signInFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: loginViewModel.emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                      ),
                      textInputAction: TextInputAction.next,
                      validator: (value) => value!.isEmpty ? 'Required' : null,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: loginViewModel.passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                      ),
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Required';
                        } else if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: loginViewModel.signIn,
                        child: const Text('Sign In'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // RichText(
                    //   text: TextSpan(
                    //     text: 'Don\'t have an account? ',
                    //     style: const TextStyle(color: Colors.black),
                    //     children: [
                    //       TextSpan(
                    //         text: 'Sign Up',
                    //         style: const TextStyle(
                    //           color: Colors.blue,
                    //           fontWeight: FontWeight.bold,
                    //         ),
                    //         recognizer: TapGestureRecognizer()
                    //           ..onTap = () {
                    //             Get.toNamed('/signUpView');
                    //           },
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
          const LoaderView(),
        ],
      ),
    );
  }
}
