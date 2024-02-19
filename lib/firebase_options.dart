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
    apiKey: 'AIzaSyD7K0IvQKDVZYmyfe--d3EMdFkmVb8azt8',
    appId: '1:389708112642:web:05373c9d2d01b5139c981b',
    messagingSenderId: '389708112642',
    projectId: 'hiit-29643',
    authDomain: 'hiit-29643.firebaseapp.com',
    storageBucket: 'hiit-29643.appspot.com',
    measurementId: 'G-SDX1FN7YDR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEXvPRQPpT2vIQfDI0sf78chEEGVQdenY',
    appId: '1:389708112642:android:d7f11431dfd587e59c981b',
    messagingSenderId: '389708112642',
    projectId: 'hiit-29643',
    storageBucket: 'hiit-29643.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD6uGKbGRYyJCVU1rGEoGWTZc0nwL9Yn0Y',
    appId: '1:389708112642:ios:377ba2a5d94511af9c981b',
    messagingSenderId: '389708112642',
    projectId: 'hiit-29643',
    storageBucket: 'hiit-29643.appspot.com',
    iosBundleId: 'com.example.hiit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD6uGKbGRYyJCVU1rGEoGWTZc0nwL9Yn0Y',
    appId: '1:389708112642:ios:2ea6e8816f3f55cd9c981b',
    messagingSenderId: '389708112642',
    projectId: 'hiit-29643',
    storageBucket: 'hiit-29643.appspot.com',
    iosBundleId: 'com.example.hiit.RunnerTests',
  );
}
