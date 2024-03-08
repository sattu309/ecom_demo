import 'dart:async';
import 'package:ecom_demo/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: ThemeData.light(),
      defaultTransition: Transition.rightToLeft,
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
      //getPages: MyRouter.route,
      theme: ThemeData(
          useMaterial3: false,
          fontFamily: 'Poppins',
          bottomAppBarTheme:
          const BottomAppBarTheme(color: Colors.transparent, elevation: 0),
          //primaryColor: AppTheme.primaryColor,
          scaffoldBackgroundColor: const Color(0xffF6F6F6),
          // highlightColor: AppTheme.primaryColor,
      ),
      themeMode: ThemeMode.light,
    );
  }
}
