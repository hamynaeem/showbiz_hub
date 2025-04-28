import 'package:flutter/material.dart';
import 'package:showbiz_hub/Home/home.dart'; // Make sure this imports the right Home screen widget
import 'package:showbiz_hub/Notification/Notification.dart';
import 'package:showbiz_hub/Profile/profile.dart'; // Profile screen

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late PageController _pageController;

  final List<Widget> _pages = [
    const Profile(),
    const Homescreen(),
    const NotificationScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(index); // Instant jump to selected page
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: _pageController,

        physics: const NeverScrollableScrollPhysics(), // Prevent swipe
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 140, 14, 219),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
              weight: 700,
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30, // bigger size
              weight: 700, // bold style (for Material 3)
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_add,
              size: 30,
              weight: 700,
            ),
            label: "Notification",
          ),
        ],
      ),
    );
  }
}
