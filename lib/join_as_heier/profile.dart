import 'package:flutter/material.dart';
import 'package:showbiz_hub/Appbar/appbar.dart';
import 'package:showbiz_hub/widgets/button.dart';

class Profile2 extends StatefulWidget {
  const Profile2({super.key});

  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Profile'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  SizedBox(width: 8),
                ],
              ),
              SizedBox(height: 21),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                  filled: true,
                  hintText: 'Enter your name',
                ),
              ),
              SizedBox(height: 11),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                  filled: true,
                  hintText: 'Enter your email',
                ),
              ),
              SizedBox(height: 11),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                  filled: true,
                  hintText: 'Enter your Number',
                ),
              ),
              SizedBox(height: 11),
              Row(
                children: [
                  Text(
                    "Additional information",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 11),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                  filled: true,
                  hintText: 'Enter age',
                ),
              ),
              SizedBox(height: 11),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                  filled: true,
                  hintText: 'Enter Country',
                ),
              ),
              SizedBox(height: 11),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                  filled: true,
                  hintText: 'Enter age',
                ),
              ),
              SizedBox(height: 11),
              SizedBox(height: 11),
              CustomButton(
                text: 'Save Profile',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
