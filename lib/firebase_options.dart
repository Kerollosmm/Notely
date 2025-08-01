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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDL8wnt3RjvF7VMUKvhau4Zb3UNtWBh7XY',
    appId: '1:644542651289:web:87a9ea394d29244ebdd108',
    messagingSenderId: '644542651289',
    projectId: 'notely-7efbb',
    authDomain: 'notely-7efbb.firebaseapp.com',
    storageBucket: 'notely-7efbb.firebasestorage.app',
    measurementId: 'G-JZ69JCV8M9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOhSXQm_lc6NADcwXuHjHiz-_qzCBdgCA',
    appId: '1:644542651289:android:3c646903882c245bbdd108',
    messagingSenderId: '644542651289',
    projectId: 'notely-7efbb',
    storageBucket: 'notely-7efbb.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAW4Y68vxCuC2HpNIy8WM1SaZ4lmqlI9T0',
    appId: '1:644542651289:ios:5494f0b83ef9f39dbdd108',
    messagingSenderId: '644542651289',
    projectId: 'notely-7efbb',
    storageBucket: 'notely-7efbb.firebasestorage.app',
    iosBundleId: 'com.example.notely',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDL8wnt3RjvF7VMUKvhau4Zb3UNtWBh7XY',
    appId: '1:644542651289:web:7ba6c33ecd0f8d11bdd108',
    messagingSenderId: '644542651289',
    projectId: 'notely-7efbb',
    authDomain: 'notely-7efbb.firebaseapp.com',
    storageBucket: 'notely-7efbb.firebasestorage.app',
    measurementId: 'G-YL086VKT1K',
  );
}
