import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_practice/firebase_options.dart';
import 'package:firebase_practice/helpers/app_routes.dart';
import 'package:firebase_practice/screens/auth/auth_page.dart';
import 'package:firebase_practice/screens/home/home_view.dart';
import 'package:firebase_practice/widgets/loader_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'helpers/theme_helper.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Auth',
      theme: ThemeHelper.lightTheme,
      //darkTheme: ThemeHelper.darkTheme,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoaderView();
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Something went wrong!'),
            );
          } else if (snapshot.hasData) {
            return HomeView();
          } else {
            return AuthPage();
          }
        },
      ),
      getPages: AppRoutes()
          .getRoutes(), // Added this line to register routes in the app
    );
  }
}
