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
    apiKey: 'AIzaSyBDXki5TEtv8K2sDsG4UuIV2I21oEmuAvo',
    appId: '1:651065993600:web:331c85d45321ae48c1b965',
    messagingSenderId: '651065993600',
    projectId: 'internationalprojects-43114',
    authDomain: 'internationalprojects-43114.firebaseapp.com',
    storageBucket: 'internationalprojects-43114.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDpV9ZIfSzA9sP8eV-JnmAklLizUkAX1-E',
    appId: '1:651065993600:android:e50c09ab0e369c40c1b965',
    messagingSenderId: '651065993600',
    projectId: 'internationalprojects-43114',
    storageBucket: 'internationalprojects-43114.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxOUsKnJv9xzrgY0BcWBT0qYPQYO6ZzX0',
    appId: '1:651065993600:ios:6e638b2c9f2e257bc1b965',
    messagingSenderId: '651065993600',
    projectId: 'internationalprojects-43114',
    storageBucket: 'internationalprojects-43114.appspot.com',
    iosBundleId: 'com.example.interProjects',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAxOUsKnJv9xzrgY0BcWBT0qYPQYO6ZzX0',
    appId: '1:651065993600:ios:2ebc8087c0a0e729c1b965',
    messagingSenderId: '651065993600',
    projectId: 'internationalprojects-43114',
    storageBucket: 'internationalprojects-43114.appspot.com',
    iosBundleId: 'com.example.interProjects.RunnerTests',
  );
}
