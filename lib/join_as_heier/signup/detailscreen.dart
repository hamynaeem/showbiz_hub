import 'package:flutter/material.dart';
import 'package:showbiz_hub/Appbar/appbar.dart';

class Detailscreen2 extends StatefulWidget {
  final String name;
  final String image;
  final String date;
  final String description;

  const Detailscreen2({
    super.key,
    required this.name,
    required this.image,
    required this.date,
    required this.description,
  });

  @override
  State<Detailscreen2> createState() => _Detailscreen2State();
}

class _Detailscreen2State extends State<Detailscreen2> {
  late TextEditingController nameController;
  late TextEditingController dateController;
  late TextEditingController descriptionController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.name);
    dateController = TextEditingController(text: widget.date);
    descriptionController = TextEditingController(text: widget.description);
  }

  @override
  void dispose() {
    nameController.dispose();
    dateController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Profile'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Event Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Image.asset(
              widget.image,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 16),
            TextField(
              controller: dateController,
              decoration: InputDecoration(
                labelText: 'Date',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 140, 14, 219),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
