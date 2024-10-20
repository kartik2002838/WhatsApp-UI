import 'package:flutter/material.dart';
import 'package:whatsapp_clone1/Screen/Login/LoginScreen.dart';
import 'package:whatsapp_clone1/Widget/uiHelper.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/onBoarding.png", height: 200),
            SizedBox(height: 20),
            UiHelper.CustomText(
                text: "Welcome to WhatsApp", height: 20, color: Colors.black),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Read Out ", height: 14),
                UiHelper.CustomText(
                    text: "Privacy Policy ", height: 14, color: Colors.blue),
                UiHelper.CustomText(
                    text: "Tap ''Agree and Continue''", height: 14),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "to accept the ", height: 14),
                UiHelper.CustomText(
                    text: "Teams of Services", height: 14, color: Colors.blue)
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
          }, buttonname: "Agree and Continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
