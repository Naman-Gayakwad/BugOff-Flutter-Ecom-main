import 'package:engage_files/splashScreen.dart';

import 'Pages/Home/routPage.dart';
import 'Pages/details.dart';
import 'Pages/Home/home.dart';
import 'Pages/Home/mycart.dart';
import 'login.dart';
import 'models/user_model.dart';
import 'responsivescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  ResponsiveScreen.ScreenHeight = 844;
  ResponsiveScreen.ScreenWidth = 390;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrentUser.currentUser == false
          ? const DashboardScreen()
          : const Splash(),
    );
  }
}
