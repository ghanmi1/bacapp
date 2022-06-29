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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD8wydMcwsFaLZSxp0NqlNck8BKaI6pDmc',
    appId: '1:877867102193:web:9177a5a7fc0be1d01ade50',
    messagingSenderId: '877867102193',
    projectId: 'lofty-layout-344710',
    authDomain: 'lofty-layout-344710.firebaseapp.com',
    storageBucket: 'lofty-layout-344710.appspot.com',
    measurementId: 'G-EH73GQYR3R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAdoVlQO2p_nEl4naYq4buxHF0x7DCjFY',
    appId: '1:877867102193:android:6938b8666de94ce81ade50',
    messagingSenderId: '877867102193',
    projectId: 'lofty-layout-344710',
    storageBucket: 'lofty-layout-344710.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1Wny53xWqQJn4ui-4qgVISk0w6TjUmwQ',
    appId: '1:877867102193:ios:67dade98cbaa97ac1ade50',
    messagingSenderId: '877867102193',
    projectId: 'lofty-layout-344710',
    storageBucket: 'lofty-layout-344710.appspot.com',
    iosClientId: '877867102193-7m9kh41sanh2epse6sr28gm49pjj46m0.apps.googleusercontent.com',
    iosBundleId: 'com.example.bacapp',
  );
}