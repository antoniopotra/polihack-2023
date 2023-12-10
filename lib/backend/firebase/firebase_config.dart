import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCU2yamKuCfyOUAzVF73cjvqD5rRHbyeCI",
            authDomain: "polihack2023.firebaseapp.com",
            projectId: "polihack2023",
            storageBucket: "polihack2023.appspot.com",
            messagingSenderId: "661884499419",
            appId: "1:661884499419:web:f478034a460f4a8c4423fe",
            measurementId: "G-S05ZXCQKL2"));
  } else {
    await Firebase.initializeApp();
  }
}
