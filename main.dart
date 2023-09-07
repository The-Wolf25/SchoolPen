import 'package:flutter/material.dart';
import 'package:learn/Screens/Chooseprofile.dart';
import 'package:learn/Screens/FillName.dart';
import 'package:learn/Screens/LoginNew1.dart';
import 'package:learn/Screens/Onboard.dart';
import 'package:learn/Screens/SignupNew1.dart';
import 'package:learn/Screens/Splash.dart';
import 'package:learn/Screens/Teacher.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
