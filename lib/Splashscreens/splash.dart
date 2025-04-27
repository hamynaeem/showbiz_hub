import 'dart:async';

import 'package:flutter/material.dart';
import 'package:showbiz_hub/Authentication/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => Splashscreen2(),
            ),
            (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(
            'assets/images/splash.png',
            width: 111,
            height: 111,
          ),
        ));
  }
}

class Splashscreen2 extends StatefulWidget {
  const Splashscreen2({super.key});

  @override
  State<Splashscreen2> createState() => _Splashscreen2State();
}

class _Splashscreen2State extends State<Splashscreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Text(
                      "Hi Welcome",
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Nunito Sans",
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Please Select your Role by clicking on the button",
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Nunito Sans",
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/role 1.png",
                    height: 350,
                    width: 350,
                  ),
                ),
                SizedBox(
                  height: 42,
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginscreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 15),
                          backgroundColor: Colors.deepPurpleAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Join As Talent",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Nunito Sans",
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      const SizedBox(height: 22),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginscreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 15),
                          backgroundColor: Colors.deepPurpleAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Join As Talen", // (Maybe typo? Should be "Talent"?)
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Nunito Sans",
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class JoinAsHikerScreen extends StatelessWidget {
  const JoinAsHikerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height *
                0.7, // 50% of screen height, adjust as needed
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Frame 9.png"),
                fit: BoxFit.fitHeight, // You can change to other BoxFit types
              ),
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hi Welcome",
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Nunito Sans",
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 4),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Please Select your Role by clicking on the button",
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Nunito Sans",
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    onPressed: () {
                      ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 15),
                          backgroundColor: Colors.deepPurpleAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ));
                    },
                    child: Text("data"),
                  ),
                ])
              ],
            ))));
  }
}
