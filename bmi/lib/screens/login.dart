// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_print, avoid_unnecessary_containers, unused_field, prefer_final_fields, use_build_context_synchronously, empty_statements

import 'package:bmi/screens/homescreen.dart';
import 'package:bmi/screens/registration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// import 'package:mylogin3/views/auth/forgotpassword.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  bool _obsecuretext = true;
  TextEditingController loginnameController = TextEditingController();
  TextEditingController loginpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Form(
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
                  Image(image: AssetImage('assets/Login.png')),
                  Text(
                    'Welcome',
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  ),
                  Text('Login to your account'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email is required";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    controller: loginnameController,
                    decoration: InputDecoration(
                        label: Text('Email'),
                        // hintText: "Enter Email",
                        prefixIcon: const Icon(
                          Icons.email,
                        ),
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "PassWord is required";
                      }
                      return null;
                    },
                    obscureText: _obsecuretext,
                    controller: loginpasswordController,
                    decoration: InputDecoration(
                        label: Text('Password'),
                        // hintText: "Enter Password",
                        prefixIcon: Icon(
                          Icons.password,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obsecuretext = !_obsecuretext;
                              });
                            },
                            icon: _obsecuretext
                                ? Icon(
                                    Icons.visibility_off,
                                    color: Colors.black,
                                  )
                                : Icon(
                                    Icons.visibility,
                                    color: Colors.black,
                                  )),
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        if (_formkey.currentState!.validate()) {
                          var loginemail = loginnameController.text.trim();
                          var loginpassword =
                              loginpasswordController.text.trim();

                          try {
                            final User? firebaseuser = (await FirebaseAuth
                                    .instance
                                    .signInWithEmailAndPassword(
                                        email: loginemail,
                                        password: loginpassword))
                                .user;

                            if (firebaseuser != null) {
                              print("Error");

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            } else {
                              print('Check Email & Password');
                            }

                            Fluttertoast.showToast(
                                msg: "Login Successfully",
                                backgroundColor: Colors.white,
                                textColor: Colors.black);
                          } on FirebaseAuthException catch (e) {
                            print("Error$e");
                          }

                          Fluttertoast.showToast(
                              msg: "Login Failed",
                              backgroundColor: Colors.white,
                              textColor: Colors.black);
                        }
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don`t have an account?'),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()));
                        },
                        child: Text('Sign up'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
