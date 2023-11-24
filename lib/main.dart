import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instodrum/Screen/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyA3Uozfrlm2uPV3lAQgl9laYx6dTnuDOQE",
          appId: "1:918914014784:android:49154aa93908fef48b49a5",
          messagingSenderId: "918914014784",
          projectId: "instodrum"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
