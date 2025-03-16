// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCD2z1g6kBpkTGaq6YrA4pqtEWt1mIVrkw',
    appId: '1:726229404472:web:bb791a75fbab202bc3cfcd',
    messagingSenderId: '726229404472',
    projectId: 'fruit-market-10931',
    authDomain: 'fruit-market-10931.firebaseapp.com',
    storageBucket: 'fruit-market-10931.firebasestorage.app',
    measurementId: 'G-K6L5NMVF0B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDnmeIWgcbYcobZ5rlTIpfzTpwNW013PyA',
    appId: '1:726229404472:android:366111a0ebf26754c3cfcd',
    messagingSenderId: '726229404472',
    projectId: 'fruit-market-10931',
    storageBucket: 'fruit-market-10931.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1UNt2W-b2QqxNqKB9b77i0xBr1cXHKDw',
    appId: '1:726229404472:ios:f0c7988bb685f033c3cfcd',
    messagingSenderId: '726229404472',
    projectId: 'fruit-market-10931',
    storageBucket: 'fruit-market-10931.firebasestorage.app',
    iosBundleId: 'com.example.fruitMarket',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB1UNt2W-b2QqxNqKB9b77i0xBr1cXHKDw',
    appId: '1:726229404472:ios:f0c7988bb685f033c3cfcd',
    messagingSenderId: '726229404472',
    projectId: 'fruit-market-10931',
    storageBucket: 'fruit-market-10931.firebasestorage.app',
    iosBundleId: 'com.example.fruitMarket',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCD2z1g6kBpkTGaq6YrA4pqtEWt1mIVrkw',
    appId: '1:726229404472:web:37c5ff02a23cf457c3cfcd',
    messagingSenderId: '726229404472',
    projectId: 'fruit-market-10931',
    authDomain: 'fruit-market-10931.firebaseapp.com',
    storageBucket: 'fruit-market-10931.firebasestorage.app',
    measurementId: 'G-L0V5DRSW0C',
  );
}
