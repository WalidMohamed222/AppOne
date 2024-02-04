import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'buttons.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey= GlobalKey<FormState>();
  TextEditingController emailnumcontroller= TextEditingController();
  TextEditingController passcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 200,
              height: 180,
              child: Image.asset("assets/coffee1.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: emailnumcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                ),
                validator: (value) {
                  if (value ==null || value.isEmpty) {
                    return 'Please enter an email address';
                  } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null; // Return null if the input is valid
                },
              )
              ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(labelText: "Password"),
                controller: passcontroller,
                obscureText: true,
                validator: (value){
                  if (value == null || value.isEmpty) {
                    return "Please enter a password";
                  } else if (value.length<8){
                    return "Invalid password";
                  }else{
                    return null ;
                  }
                },
              ),
            ),
            const Padding(padding:EdgeInsets.all(10)),
            Button(label: "Log In",
              colorbutton: Colors.blue,
              colortext: Colors.white,
              fontsize: 18,
              onTap: (){
                if(_formKey.currentState!.validate()){
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen(
                      email : emailnumcontroller.text,
                      password : passcontroller.text,
                    )),
                  );
                  passcontroller.clear();
                }
              },
            ),
            const Padding(padding:EdgeInsets.all(15)),
            InkWell(
              onTap: (){
                print("Forget Password");
              },
              child: const Text(
                "Forget password?No yawa. Tap me",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(padding:EdgeInsets.all(15)),
            Button(label: "No Account? Sign Up",
              colorbutton: Colors.grey,
              colortext: Colors.black54,
              fontsize: 16,
              onTap: (){
                print("Sign Up");
              },
            ),
          ]),
        ),
      ),
    );
  }
}