import 'package:flutter/material.dart';
import 'package:showbiz_hub/bootom.dart';
import 'package:showbiz_hub/login.dart';
import 'package:showbiz_hub/profile.dart';
import 'package:showbiz_hub/signup.dart';
import 'package:showbiz_hub/splash.dart';
import 'package:showbiz_hub/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Showbiz Hub',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: JoinAsHikerScreen(),
    );
  }
}
