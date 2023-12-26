import 'package:fintech/screens/gold_plan.dart';
import 'package:fintech/screens/profile.dart';
import 'package:fintech/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 186, 110, 39),
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
