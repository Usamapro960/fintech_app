import 'dart:async';

import 'package:fintech/screens/auth/signup.dart';
import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const SignUpScreen();
        }));
        // Navigate to your favorite place
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.logo.path),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
