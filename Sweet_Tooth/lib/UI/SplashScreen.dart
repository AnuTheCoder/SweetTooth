import 'dart:async';
import 'package:flutter/material.dart';

import 'screens/auth/LoginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                LoginScreen()
            )
        )
    );
  }
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/BackGrounds/SplashBg.jpg"),
          fit: BoxFit.cover,
        ),
      ),

      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 320, 10, 10),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/BackGrounds/Splash.jpg"),
              radius: 70,
              backgroundColor: Colors.transparent,
            ),
          ),
          Text("Cake Factory",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.pink,
            decoration: TextDecoration.none
          ),)
        ],
      ),
    );
  }
}

