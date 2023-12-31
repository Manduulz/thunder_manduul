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
    apiKey: 'AIzaSyCS_F4BVOzwFnQ8beE7CoWsKVJSsJrVLLw',
    appId: '1:581613992527:web:4b0f0a4eb58c70b5be083a',
    messagingSenderId: '581613992527',
    projectId: 'lesson-day-29-flutter-manduul',
    authDomain: 'lesson-day-29-flutter-manduul.firebaseapp.com',
    storageBucket: 'lesson-day-29-flutter-manduul.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBBJv6R2eqiC0x5wZ_2JN16K1ditwUQpKg',
    appId: '1:581613992527:android:487704a3a2fea894be083a',
    messagingSenderId: '581613992527',
    projectId: 'lesson-day-29-flutter-manduul',
    storageBucket: 'lesson-day-29-flutter-manduul.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBAVXhpNPLpG2yuT53ZKQzRIrhPdXzSMLk',
    appId: '1:581613992527:ios:010de988ace6a607be083a',
    messagingSenderId: '581613992527',
    projectId: 'lesson-day-29-flutter-manduul',
    storageBucket: 'lesson-day-29-flutter-manduul.appspot.com',
    iosBundleId: 'com.example.lessonDay30Flutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBAVXhpNPLpG2yuT53ZKQzRIrhPdXzSMLk',
    appId: '1:581613992527:ios:51b62438f20cd8d4be083a',
    messagingSenderId: '581613992527',
    projectId: 'lesson-day-29-flutter-manduul',
    storageBucket: 'lesson-day-29-flutter-manduul.appspot.com',
    iosBundleId: 'com.example.lessonDay30Flutter.RunnerTests',
  );
}
