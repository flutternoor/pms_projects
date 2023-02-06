

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pms_projects/ui/auth/signup_screen/signup_screen.dart';

import '../../constants/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => SignUpScreen()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kAppColor,
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width:double.infinity,
                  child: Image.asset('assets/images/splash_logo.png')),

              Column(
                children: [
                  Text('WELCOME TO',style: TextStyle(fontSize: 16,color: Colors.white
                  ),),
                  SizedBox(height: 15,),

                  Text('PESHAWAR',style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold)
                  ),
                  Text('MODEL SCHOOL',style: TextStyle(color: Colors.white,fontSize: 13
                  ),),
                ],
              ),



            ],
          ),
        )
    );
  }
}
