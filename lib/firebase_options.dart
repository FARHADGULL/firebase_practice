// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC9Gxu73wmQm7tZTGdI8im2Wzlogkxe5bA',
    appId: '1:162412077730:web:99252f40d67e88af552dfb',
    messagingSenderId: '162412077730',
    projectId: 'fir-practice-42961',
    authDomain: 'fir-practice-42961.firebaseapp.com',
    storageBucket: 'fir-practice-42961.appspot.com',
    measurementId: 'G-WV9XVEKDF1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7IVqHVy1frr6rGgi7jHqwUVt3cXMuoOY',
    appId: '1:162412077730:android:e7c465aff65dd63d552dfb',
    messagingSenderId: '162412077730',
    projectId: 'fir-practice-42961',
    storageBucket: 'fir-practice-42961.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBkMANGRZZwtaOhX5raolKt9EnPO9qPfmI',
    appId: '1:162412077730:ios:3e6758e6b8c5dcfb552dfb',
    messagingSenderId: '162412077730',
    projectId: 'fir-practice-42961',
    storageBucket: 'fir-practice-42961.appspot.com',
    iosBundleId: 'com.example.firebasePractice',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBkMANGRZZwtaOhX5raolKt9EnPO9qPfmI',
    appId: '1:162412077730:ios:dc0547c2f2d7f8af552dfb',
    messagingSenderId: '162412077730',
    projectId: 'fir-practice-42961',
    storageBucket: 'fir-practice-42961.appspot.com',
    iosBundleId: 'com.example.firebasePractice.RunnerTests',
  );
}
