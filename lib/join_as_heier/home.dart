import 'package:flutter/material.dart';
import 'package:showbiz_hub/Appbar/appbar.dart';
import 'package:showbiz_hub/join_as_heier/signup/detailscreen.dart';

class Homescreen2 extends StatefulWidget {
  const Homescreen2({super.key});

  @override
  State<Homescreen2> createState() => _Homescreen2State();
}

class _Homescreen2State extends State<Homescreen2> {
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
      appBar: CustomAppBar(
        title: 'Home',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: myProducts.length,
                itemBuilder: (context, index) {
                  final product = myProducts[index];
                  return Card(
                    color: const Color.fromARGB(255, 140, 14, 219),
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
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage(product["image"] as String),
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
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Detailscreen2(
                                        name: product["name"],
                                        image: product["image"],
                                        date: product["date"],
                                        description: product["description"],
                                      ),
                                    ),
                                  );
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  padding: EdgeInsets.zero,
                                  minimumSize: const Size(50, 30),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
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
                                      fontFamily: 'inter',
                                      color: Colors.white,
                                      fontSize: 16,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text(product["name"],
                                          style: const TextStyle(
                                              color: Colors.white))),
                                  const SizedBox(height: 12),
                                  const Text(
                                    'Description:',
                                    style: TextStyle(
                                      fontFamily: 'inter',
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
                                          style: const TextStyle(
                                            fontFamily: 'inter',
                                            fontSize: 14,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ))),
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
            ],
          ),
        ),
      ),
    );
  }
}
