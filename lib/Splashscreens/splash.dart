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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1, // Top height
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                  Text(
                    "Hi Welcome",
                    style: TextStyle(
                      color: Colors.black,
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
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Please Select your Role by clicking on the button",
                  style: TextStyle(
                    color: Colors.black,
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
                            horizontal: 88, vertical: 5),
                        backgroundColor: Color.fromARGB(255, 140, 14, 219),
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
                            horizontal: 88, vertical: 5),
                        backgroundColor: Color.fromARGB(255, 140, 14, 219),
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
                  ],
                ),
              ),
            ],
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
            0.5, // 50% of screen height, adjust as needed\
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 140, 14, 219),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SIgn In",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w800,
                fontFamily: "inknutantiqua",
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "Lorem ipsum dolor sit amet consectetur. Mauris tortor ut sit et a pretium. Et scelerisque placerat ac viverra et. Egestas eget fringilla laoreet nulla vulputate. Suspendisse mattis integer luctus augue est elit.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Inter",
                  letterSpacing: 0.5,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 72, vertical: 5),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Loginscreen()),
                  );
                },
                child: Text("Sigin"),
              ),
            ]),
            const SizedBox(height: 22),
          ],
        )),
      ),
    );
  }
}
