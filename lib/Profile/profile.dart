import 'dart:io';
import 'package:flutter/material.dart';
import 'package:showbiz_hub/Appbar/appbar.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? selectedRole;
  String? selectedSkinTune;
  String? selectedBodyType;
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
                  fillColor: Colors.deepPurpleAccent,
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
                  fillColor: Colors.deepPurpleAccent,
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
                  fillColor: Colors.deepPurpleAccent,
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
                  fillColor: Colors.deepPurpleAccent,
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
                  fillColor: Colors.deepPurpleAccent,
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
                  fillColor: Colors.deepPurpleAccent,
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
                  fillColor: Colors.deepPurpleAccent,
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
                  fillColor: Colors.deepPurpleAccent,
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
                  fillColor: Colors.deepPurpleAccent,
                  filled: true,
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
                ),
                maxLines: 4,
                maxLength: 150,
              ),
              SizedBox(height: 11),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Other skills',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.deepPurpleAccent,
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
                  Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.add_a_photo),
                              onPressed: () {
                                _pickImage(ImageSource.gallery);
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.camera_alt),
                              onPressed: () {
                                _pickImage(ImageSource.camera);
                              },
                            ),
                          ],
                        ),
                        if (selectedImage != null)
                          Image.file(
                            File(selectedImage!.path),
                            width: 100,
                            height: 100,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 11),
              SizedBox(height: 11),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
                    padding: EdgeInsets.symmetric(horizontal: 72, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
