import 'package:firebase_practice/screens/auth/signup/signup_viewmodel.dart';
import 'package:firebase_practice/widgets/loader_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SignUpView extends StatelessWidget {
  SignUpView({super.key});

  SignUpViewModel signUpViewModel = Get.put(SignUpViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 25),
              child: Form(
                key: signUpViewModel.signUpFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: signUpViewModel.emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                      ),
                      textInputAction: TextInputAction.next,
                      validator: (value) => value!.isEmpty ? 'Required' : null,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: signUpViewModel.passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                      ),
                      textInputAction: TextInputAction.next,
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
                    TextFormField(
                      controller: signUpViewModel.confirmPasswordController,
                      decoration: const InputDecoration(
                        labelText: 'Confirm Password',
                        hintText: 'Re-enter your password',
                      ),
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Required';
                        } else if (value !=
                            signUpViewModel.passwordController.text) {
                          return 'Passwords do not match';
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: signUpViewModel.signUp,
                        child: const Text('Sign Up'),
                      ),
                    ),
                    const SizedBox(height: 20),

                    //     style: const TextStyle(color: Colors.black),
                    //     children: [
                    //       TextSpan(
                    //         text: 'Sign In',
                    //         style: const TextStyle(
                    //           color: Colors.blue,
                    //         ),
                    //         recognizer: TapGestureRecognizer()
                    //           ..onTap = () {
                    //             Navigator.of(context).pop();
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
