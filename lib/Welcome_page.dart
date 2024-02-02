import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  final String phonenumber;
  final String password;
  const WelcomePage({Key? key ,
    required this.phonenumber ,
    required this.password
  }) : super(key:key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Text(widget.phonenumber,style: TextStyle(color: Colors.amber,),)
        ],
      ),
    );
  }
}
