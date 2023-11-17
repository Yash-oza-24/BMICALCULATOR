// import 'dart:math';

// ignore_for_file: use_build_context_synchronously, prefer_const_constructors, avoid_print, sized_box_for_whitespace, prefer_const_constructors_in_immutables, unused_local_variable

// ignore: unused_import

import 'package:bmi/screens/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// import 'package:mylogin2/views/homescreen/homescreen.dart';

// ignore: must_be_immutable
class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController userphoneController = TextEditingController();

  TextEditingController useremailController = TextEditingController();

  TextEditingController userpasswordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool _obsecuretext = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 250,
                        width: 500,
                        child: Image(image: AssetImage('assets/Signup.png'))),
                    Text(
                      'Register',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      'Create Your Account',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      // ignore: body_might_complete_normally_nullable
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Username is required");
                        }
                      },
                      controller: usernameController,
                      decoration: InputDecoration(
                          label: Text("Username"),
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      // ignore: body_might_complete_normally_nullable
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Phone no. is required");
                        }
                      },
                      controller: userphoneController,
                      decoration: InputDecoration(
                          label: Text("Phone"),
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      // ignore: body_might_complete_normally_nullable
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Email is required");
                        }
                      },
                      controller: useremailController,
                      decoration: InputDecoration(
                          label: Text("Email"),
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      // ignore: body_might_complete_normally_nullable
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Password is required");
                        }
                      },
                      obscureText: _obsecuretext,
                      controller: userpasswordController,
                      decoration: InputDecoration(
                          label: Text("Password"),
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obsecuretext = !_obsecuretext;
                                });
                              },
                              icon: _obsecuretext
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            var username = usernameController.text.trim();
                            var userphone = userphoneController.text.trim();
                            var useremail = useremailController.text.trim();
                            var userpassword =
                                userpasswordController.text.trim();
                            FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: useremail, password: userpassword)
                                .then((value) => {
                                      print("User Created"),
                                      FirebaseFirestore.instance
                                          .collection("BMIUsers")
                                          .doc()
                                          .set({
                                        "User Name": username,
                                        "User Phone": userphone,
                                        "User Email": useremail
                                      })
                                    });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          }
                        },
                        child: Text(
                          'Signin',
                          style: TextStyle(color: Colors.black),
                        )),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
