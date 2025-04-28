import 'dart:io';
import 'package:flutter/material.dart';
import 'package:showbiz_hub/Appbar/appbar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:showbiz_hub/widgets/button.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? selectedRole;
  String? selectedSkinTune;
  String? selectedBodyType;
  bool makeoverNeeded = false;
  bool willingToWorkAsExtra = false;
  XFile? selectedImage;

  Future<void> _pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: source);
    if (image != null) {
      setState(() {
        selectedImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Profile'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Jackie O ',
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
                  labelText: 'Jackie65@gmail.com',
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
                  labelText: 'Phone Number',
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
                  labelText: 'Age',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                  filled: true,
                ),
              ),
              SizedBox(height: 11),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Height',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                  filled: true,
                ),
              ),
              SizedBox(height: 11),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Weight',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                  filled: true,
                ),
              ),
              SizedBox(height: 11),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Body Type',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                ),
                items: ['Slim', 'Average', 'Athletic', 'Plus Size']
                    .map((role) => DropdownMenuItem<String>(
                          value: role,
                          child: Text(role),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedBodyType = value;
                  });
                },
                value: selectedBodyType,
              ),
              SizedBox(height: 11),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Skin Tune',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                ),
                items: ['Fair', 'Wheatish', 'Dusky']
                    .map((role) => DropdownMenuItem<String>(
                          value: role,
                          child: Text(role),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedSkinTune = value;
                  });
                },
                value: selectedSkinTune,
              ),
              SizedBox(height: 11),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Language',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(),
                  ),
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                  filled: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    switchTile('Makeover Needed', makeoverNeeded, (value) {
                      setState(() {
                        makeoverNeeded = value;
                      });
                    }),
                    switchTile(
                        'Willing to work as an extra', willingToWorkAsExtra,
                        (value) {
                      setState(() {
                        willingToWorkAsExtra = value;
                      });
                    }),
                  ],
                ),
              ),
              SizedBox(height: 11),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Short Bio',
                  hintText: 'Tell us a little about yourself',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                ),
                maxLines: 4,
                maxLength: 150,
              ),
              SizedBox(height: 11),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  hintText: 'Skills',
                  labelText: 'Other skills',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 140, 14, 219),
                ),
                items: ['Dance', 'Action', 'Comedy']
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
                value: selectedRole ?? 'Dance',
              ),
              SizedBox(height: 11),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upload Media",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 11),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          uploadCard('Front'),
                          uploadCard('left'),
                          uploadCard('Right'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
