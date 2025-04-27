import 'package:flutter/material.dart';
import 'package:showbiz_hub/appbar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<Map> myProducts = [
    {
      "name": "Art Exhibition",
      "image": "assets/images/art.jpg",
      "date": "2023-05-15",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    },
    {
      "name": "Music Concert",
      "image": "assets/images/art.jpg",
      "date": "2023-05-20",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    },
    {
      "name": "Theater Play",
      "image": "assets/images/Frame 9.png",
      "date": "2023-06-01",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Home'),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: myProducts.length,
        itemBuilder: (context, index) {
          final product = myProducts[index];
          return Card(
            color: const Color.fromARGB(255, 118, 78, 230),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(26),
            ),
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 36),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top row: Avatar, Name, View Detail
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(product["image"] as String),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          product["name"],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(50, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          'View Detail',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),
                  Text(
                    product["date"],
                    style: const TextStyle(color: Colors.white70),
                  ),

                  const SizedBox(height: 16),

                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    color: const Color.fromARGB(170, 161, 113, 200),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Subject:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Align(
                              alignment: Alignment.center,
                              child: Text(product["name"],
                                  style: const TextStyle(color: Colors.white))),
                          const SizedBox(height: 12),
                          const Text(
                            'Description:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(product["description"],
                                  style: const TextStyle(color: Colors.white))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
