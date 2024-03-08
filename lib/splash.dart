import 'dart:async';
import 'package:ecom_demo/add_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'custom_bottom_bar.dart';
import 'homepage.dart';
import 'login_flow/signup.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // userCheck() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   if (pref.getString('user_info') != null) {
  //    Get.offAllNamed(CustomNavigationBar.customNavigationBar);
  //   }
  //   else{
  //     Get.offAllNamed(OnBoardingScreen.onboardingScreen);
  //   }
  // }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2 ), ()async{
      Get.to(SignUpPage());
      // userCheck();
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:  Colors.transparent,
      body: Container(

        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/splash.png",),
              fit: BoxFit.cover,

          ),
          boxShadow: [
            BoxShadow(
              color:  Colors.black.withOpacity(0.10),
              offset: const Offset(.1, .1,
              ),
              blurRadius: 20.0,
              spreadRadius: 1.0,
            ),
          ],
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [
          //     Colors.black.withOpacity(0.5), // slightly transparent black
          //     Colors.black.withOpacity(0.2), // more transparent black
          //   ],
          // ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.30),
          //     blurRadius: 10,
          //     spreadRadius: 2,
          //     offset: Offset(0, 5),
          //   ),
          // ],
        ),
        child: Stack(
          children: [
        Positioned(
            bottom: 30,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
         Image.asset("assets/images/text.png",),
          addHeight(30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 35,vertical: 7),
            decoration: BoxDecoration(
              color: Color(0xffDB3022),
              borderRadius: BorderRadius.circular(20),
            ),
                  child:
                  Text("Check",
                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.white),),
                )],))
          ],
        ),
      )

      // Column(
      //   //crossAxisAlignment: CrossAxisAlignment.center,
      //   //mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(15),
      //       child: Image.asset("assets/images/girl1.png",fit: BoxFit.cover),
      //     ),
      //
      //   ],
      // ),
    );
  }
}
