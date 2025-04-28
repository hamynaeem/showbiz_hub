import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 140, 14, 219),
          padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

Widget uploadCard(String title) {
  return Card(
    color: Color.fromARGB(255, 140, 14, 219),
    elevation: 5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Container(
      height: 120,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Icon(
            Icons.file_upload,
            color: Colors.white70,
            size: 30,
          ),
        ],
      ),
    ),
  );
}

Widget switchTile(String title, bool value, Function(bool) onChanged) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 11,
        ),
      ),
      Switch(
        value: value,
        onChanged: onChanged,
        activeColor: Color.fromARGB(255, 140, 14, 219),
        activeTrackColor: Colors.purple.shade100,
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: Colors.grey.shade400,
      ),
    ],
  );
}
