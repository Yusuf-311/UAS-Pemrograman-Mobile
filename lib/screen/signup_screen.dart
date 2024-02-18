import 'package:flutter/material.dart';
import 'package:flutter_application_1/reusable_widgets/reusable_widget.dart';
import 'package:flutter_application_1/screen/home_screen.dart';
import 'package:flutter_application_1/utils/colors_utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _userTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringColor("CB2B93"),
          hexStringColor("9546C4"),
          hexStringColor("5E61F4"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                reusableTextField(
                    "Enter Username", Icons.person, false, _userTextController),
                SizedBox(
                  height: 30,
                ),
                reusableTextField(
                    "Enter Email", Icons.person, true, _emailTextController),
                SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter Password", Icons.lock, true,
                    _passwordTextController),
                SizedBox(
                  height: 30,
                ),
                signInSignUpButton(context, false, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
