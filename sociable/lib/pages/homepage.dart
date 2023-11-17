// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sociable/componants/drawer.dart';
import 'package:sociable/componants/sociable_post.dart';
import 'package:sociable/componants/text_field.dart';
import 'package:sociable/helper/helper_methods.dart';


import 'package:sociable/pages/profilepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final currentuser = FirebaseAuth.instance.currentUser;
  final textController = TextEditingController();
  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  void postmessage() {
    if (textController.text.isNotEmpty) {
      FirebaseFirestore.instance.collection("User Posts").add({
        "UserEmail": currentuser!.email,
        "Message": textController.text,
        "TimeStemp": Timestamp.now(),
        "Likes": [],
      });
    }
    setState(() {
      textController.clear();
    });
  }

  void gotoprofilepage() {
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Profilepage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sociable',
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(10.0),
        //     child: GestureDetector(
        //         onTap: () {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => chatscreen()));
        //         },
        //         child: Icon(
        //           Icons.chat,
        //           color: Colors.white,
        //         )),
        //   ),
        // ],
      ),
      drawer: Mydrawer(
        onprofiletap: gotoprofilepage,
        onsignout: signOut,
      ),
      body: Center(
        child: Column(children: [
          Expanded(
              child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("User Posts")
                .orderBy("TimeStemp", descending: false)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      final post = snapshot.data!.docs[index];
                      return sociablepost(
                        message: post['Message'],
                        user: post['UserEmail'],
                        postId: post.id,
                        time: formatDate(post['TimeStemp']),
                        likes: List<String>.from(post['Likes'] ?? []),
                      );
                    });
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error ${snapshot.error} "),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          )),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Expanded(
                    child: MyTextField(
                        controller: textController,
                        hintText: 'Write Something here..',
                        obscureText: false)),
                IconButton(
                    onPressed: postmessage, icon: Icon(Icons.arrow_circle_up))
              ],
            ),
          ),
          Text(
            "Logged in as:" + currentuser!.email!,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 50,
          ),
        ]),
      ),
    );
  }
}
