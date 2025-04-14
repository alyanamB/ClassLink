import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAVG5ukHneQUJbU1YrWPbyY1KvcIJ9GXvA",
            authDomain: "class-link-dhvi3s.firebaseapp.com",
            projectId: "class-link-dhvi3s",
            storageBucket: "class-link-dhvi3s.firebasestorage.app",
            messagingSenderId: "98704196713",
            appId: "1:98704196713:web:e5b5309f701f9398ebcef8",
            measurementId: "G-0WYXMSRBJ2"));
  } else {
    await Firebase.initializeApp();
  }
}
