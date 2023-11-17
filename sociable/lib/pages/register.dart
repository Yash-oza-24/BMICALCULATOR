// ignore_for_file: empty_catches, prefer_const_constructors, camel_case_types, prefer_const_constructors_in_immutables, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sociable/componants/button.dart';
import 'package:sociable/componants/text_field.dart';

class registration extends StatefulWidget {
  final Function()? onTap;

  registration({super.key, this.onTap});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  final emailController = TextEditingController();

  final passController = TextEditingController();

  final confirmopassController = TextEditingController();

  void signup() async {
    showDialog(
        context: context,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));
    if (passController.text != confirmopassController.text) {
      Navigator.pop(context);
      displaymessage("password don`t match!");
      return;
    }
    try {
      UserCredential usercredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passController.text);
      if (context.mounted) Navigator.pop(context);

      FirebaseFirestore.instance
          .collection("Users")
          .doc(usercredential.user!.email!)
          .set({
        'Username': emailController.text.split('@')[0],
        "Bio": "Empty Bio.."
      });
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);

      displaymessage(e.code);
    }
  }

  void displaymessage(String message) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(message),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.face,
                    size: 100,
                  ),
                  Text(
                    "Sociable",
                    style: TextStyle(color: Colors.grey[700], fontSize: 30),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(" Create an account for you",
                      style: TextStyle(color: Colors.grey[700])),
                  SizedBox(
                    height: 25,
                  ),
                  MyTextField(
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                      controller: passController,
                      hintText: 'Password',
                      obscureText: true),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                      controller: confirmopassController,
                      hintText: 'Confirm Password',
                      obscureText: true),
                  SizedBox(
                    height: 20,
                  ),
                  Mybutton(onTap: signup, text: 'Sign up'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an acoount?",
                          style: TextStyle(color: Colors.grey[700])),
                      SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          "Login Now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
