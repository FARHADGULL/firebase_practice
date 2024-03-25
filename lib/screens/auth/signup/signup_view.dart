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
        // appBar: AppBar(
        //   title: const Text('Sign Up'),
        // ),
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: signUpViewModel.emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                  ),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: signUpViewModel.passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                  ),
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: signUpViewModel.confirmPasswordController,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                    hintText: 'Re-enter your password',
                  ),
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: signUpViewModel.signUp,
                    child: const Text('Sign Up'),
                  ),
                ),
                const SizedBox(height: 20),
                // RichText(
                //   text: TextSpan(
                //     text: 'Already have an account? ',
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
        const LoaderView(),
      ],
    ));
  }
}
