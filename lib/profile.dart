import 'dart:ffi' as ffi;

import 'package:flutter/material.dart';
import 'package:showbiz_hub/appbar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? selectedRole;
  String? selectedDuskey;
  String? selectedSkill;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Profile'),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Jackie O ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  fillColor: Colors.deepPurpleAccent,
                  filled: true,
                  hintText: 'Enter your name',
                ),
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Jackie65@gmail.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Colors.deepPurpleAccent,
                  filled: true,
                  hintText: 'Enter your email',
                ),
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Colors.deepPurpleAccent,
                  filled: true,
                  hintText: 'Enter your Number',
                ),
              ),
              SizedBox(
                height: 11,
              ),
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
              SizedBox(
                height: 11,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Colors.deepPurpleAccent,
                  filled: true,
                  hintText: 'Enter your email',
                ),
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Height',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Colors.deepPurpleAccent,
                  filled: true,
                  hintText: 'Enter your email',
                ),
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Weight',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Colors.deepPurpleAccent,
                  filled: true,
                  hintText: 'Enter your email',
                ),
              ),
              SizedBox(
                height: 11,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Plus size',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.deepPurpleAccent,
                ),
                items: ['Admin', 'User']
                    .map((role) => DropdownMenuItem<String>(
                          value: role,
                          child: Text(role),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedRole = value;
                  });
                },
                value: selectedRole,
              ),
              SizedBox(
                height: 11,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Duskey',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.deepPurpleAccent,
                ),
                items: ['Admin', 'User']
                    .map((role) => DropdownMenuItem<String>(
                          value: role,
                          child: Text(role),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedRole = value;
                  });
                },
                value: selectedRole,
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Language',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Colors.deepPurpleAccent,
                  filled: true,
                  hintText: 'Enter your email',
                ),
              ),
              SizedBox(),
              SizedBox(
                height: 11,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Short Bio',
                  hintText: 'Tell us a little about yourself',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                maxLines: 4,
                maxLength: 150,
              ),
              SizedBox(
                height: 11,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'other skills',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.deepPurpleAccent,
                ),
                items: ['Admin', 'User']
                    .map((role) => DropdownMenuItem<String>(
                          value: role,
                          child: Text(role),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedRole = value;
                  });
                },
                value: selectedRole,
              ),
              SizedBox(
                height: 11,
              ),
              Row(
                children: [
                  Text(
                    "Upload Media",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle the button press here
                        print('Button pressed!');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 73, vertical: 5),
                      ),
                      child: const Text('Save'),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
