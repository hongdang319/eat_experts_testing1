import 'dart:async';

import 'package:eat_experts/screens/location_access_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => LocationAccessScreen(),
        ));
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 154, 90, 203),
      body: Center(
        child: Image.asset("assets/EatExperts Icon.png", scale: 2,),
      )
    );
  }
}