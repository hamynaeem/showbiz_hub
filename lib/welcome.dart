import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 222), // 👈 adjust top padding here
          child: Column(
            children: [
              Image.asset(
                "assets/images/splash.png",
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Thanks For Logging In To Showbiz Hub',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Image.asset('assets/images/Component 1.png'),
            ],
          ),
        ),
      ),
    );
  }
}
