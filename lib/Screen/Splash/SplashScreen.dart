import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone1/Screen/onBoarding/onBoardingScreen.dart';
import 'package:whatsapp_clone1/Widget/uiHelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboardingscreen()));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Logo.png",
              height: 100,
            ),
            SizedBox(height: 10),
            UiHelper.CustomText(
                text: 'WhatsApp', height: 18, fontweight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
