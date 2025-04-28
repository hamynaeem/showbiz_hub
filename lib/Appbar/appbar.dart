import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(135); // Increased height!

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true, // show back arrow if needed
      title: Padding(
        padding: const EdgeInsets.only(top: 10), // Center it vertically better
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20, // Slightly bigger
            fontWeight: FontWeight.w600,
            color: Color(0xFFFFFFFF),
            fontFamily: 'inknutantiqua',
          ),
        ),
      ),
      centerTitle: true,
      elevation: 0,
      flexibleSpace: ClipPath(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/Rectangle 6.png'), // your purple background
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
