import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shoppingmart/const/consts.dart';
import 'package:shoppingmart/screens/auth_screen/signup_screen.dart';
import 'package:shoppingmart/screens/home_screen/home_screen.dart';
import 'package:shoppingmart/screens/splash_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: darkFontGrey)),
        fontFamily: regular,
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
