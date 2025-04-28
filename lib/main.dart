import 'package:flutter/material.dart';
import 'package:showbiz_hub/Profile/view_profile.dart';
import 'package:showbiz_hub/Splashscreens/splash.dart';
import 'package:showbiz_hub/join_as_heier/home.dart';
import 'package:showbiz_hub/join_as_heier/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Showbiz Hub',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Homescreen2(),
    );
  }
}
