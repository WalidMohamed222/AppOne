import 'package:first1/Login.dart';
import 'package:flutter/material.dart';
import 'defaultPage.dart';
import 'settingScreen.dart';
import 'categories.dart';

class homeScreen extends StatefulWidget {
  final String phoneNumber;
  final String password;
  const homeScreen({Key? key, required this.phoneNumber, required this.password})
      : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int pageIndex = 0;
  final List<Widget> pages = const [
    defaultPage(),
    Categories(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        height: double.infinity,
        width: 100,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.exit_to_app),
                  Text("SignOut"),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(),
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (int index) {
          pageIndex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }
}