import 'package:first1/Login.dart';
import 'package:flutter/material.dart';
import 'default_page.dart';
import 'settingScreen.dart';
import 'categories.dart';

class HomeScreen extends StatefulWidget {
  final String email;
  final String password;
  const HomeScreen({Key? key, required this.email, required this.password})
      : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String useremail="";
  int pageIndex = 0;
  final List<Widget> pages = const [
    DefaultPage(),
    Categories(),
    Setting(),
  ];

  @override
  void initState(){
    super.initState();
    getUserEmail();
  }
  Future<void> getUserEmail() async{
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: MediaQuery.of(context).size.width*.7,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*.7,
              height: 150,
              color: Colors.blue,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed:() {
                        Navigator.of(context).pop();
                        },
                          icon: const Icon(Icons.close))
                    ],
                  ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  child: Icon(
                    Icons.person_3,
                  ),
                ),
                Text("User Name"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Email:$useremail")],
            )
                  ],
              ),
            ),
            InkWell(
              onTap: () async{},
              child: const ListTile(
                leading: Icon(Icons.person_3),
                title: Text("Profile"),
              ),
            ),
            InkWell(
              onTap: () async{},
              child: const ListTile(
                leading: Icon(Icons.add_shopping_cart),
                title: Text("Add Category"),
              ),
            ),
            InkWell(
              onTap: () async{},
              child: const ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text("Cart"),
              ),
            ),
            InkWell(
              onTap: () async{},
              child: const ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () async {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: const ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text("SignOut"),
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