// ignore_for_file: camel_case_types, prefer_const_constructors, unused_local_variable, duplicate_ignore, non_constant_identifier_names, avoid_print, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sociable/componants/comment_button.dart';
import 'package:sociable/componants/comments.dart';
import 'package:sociable/componants/delete_button.dart';
import 'package:sociable/componants/like_button.dart';
import 'package:sociable/helper/helper_methods.dart';

class sociablepost extends StatefulWidget {
  final String message;
  final String user;
  final String postId;
  final List<String> likes;
  final String time;

  const sociablepost({
    super.key,
    required this.message,
    required this.user,
    required this.postId,
    required this.likes,
    required this.time,
  });

  @override
  State<sociablepost> createState() => _sociablepostState();
}

class _sociablepostState extends State<sociablepost> {
  final currentUser = FirebaseAuth.instance.currentUser!;
  bool isLiked = false;

  final _commentsTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    isLiked = widget.likes.contains(currentUser.email);
  }

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });

    DocumentReference postRef =
        FirebaseFirestore.instance.collection("User Posts").doc(widget.postId);
    if (isLiked) {
      postRef.update({
        'Likes': FieldValue.arrayUnion([currentUser.email])
      });
    } else {
      postRef.update({
        'Likes': FieldValue.arrayRemove([currentUser.email])
      });
    }
  }

  void addComment(String commentText) {
    FirebaseFirestore.instance
        .collection("User Posts")
        .doc(widget.postId)
        .collection("Comments")
        .add({
      "CommentText": commentText,
      "Commentedby": currentUser.email,
      "CommentTime": Timestamp.now(),
    });
  }

  void showCommentdialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.grey[900],
              title: Text(
                'Add Comment',
                style: TextStyle(color: Colors.white),
              ),
              content: TextField(
                  autofocus: true,
                  style: TextStyle(color: Colors.white),
                  controller: _commentsTextController,
                  decoration: InputDecoration(
                    hintText: "Write a Comment...",
                    hintStyle: TextStyle(color: Colors.grey),
                  )),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _commentsTextController.clear();
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.white),
                    )),
                TextButton(
                    onPressed: () {
                      addComment(_commentsTextController.text);
                      Navigator.pop(context);
                      _commentsTextController.clear();
                    },
                    child: Text(
                      "Post",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ));
  }

  void deletePost() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                "Delete Post",
                style: TextStyle(color: Colors.white),
              ),
              content: Text("Are you sure You Want to delete this Post?"),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.white),
                    )),
                TextButton(
                    onPressed: () async {
                      final CommentDocs = await FirebaseFirestore.instance
                          .collection("User Posts")
                          .doc(widget.postId)
                          .get();
                      // for (var doc in CommentDocs.docs) {
                      //   await FirebaseFirestore.instance
                      //       .collection("User Posts")
                      //       .doc(widget.postId)
                      //       .collection("Comments")
                      //       .doc(doc.id)
                      //       .delete();
                      // }
                      FirebaseFirestore.instance
                          .collection("User Posts")
                          .doc(widget.postId)
                          .delete()
                          .then((value) => print("Post Deleted"))
                          .catchError((error) =>
                              print("Failed to delete a post: $error"));
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Delete",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.primary),
      margin: EdgeInsets.only(top: 25, left: 25, right: 25),
      padding: EdgeInsets.all(15),
      child: Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.message),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          widget.user,
                          style: TextStyle(color: Colors.grey[400]),
                        ),
                        Text(".", style: TextStyle(color: Colors.grey[400])),
                        Text(widget.time,
                            style: TextStyle(color: Colors.grey[400])),
                      ],
                    ),
                  ],
                ),
                if (widget.user == currentUser.email)
                  Expanded(
                    child: Center(
                        child: Deletebutton(
                      onTap: deletePost,
                      iconSize: 24,
                    )),
                  )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    likebutton(isLiked: isLiked, onTap: toggleLike),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.likes.length.toString(),
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Commentbutton(
                      onTap: showCommentdialog,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '0',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("User Posts")
                    .doc(widget.postId)
                    .collection("Comments")
                    .orderBy("CommentTime", descending: true)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return SingleChildScrollView(
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: snapshot.data!.docs.map((doc) {
                        // ignore: unused_local_variable
                        final commentdata = doc.data() as Map<String, dynamic>;

                        return Comments(
                            text: commentdata["CommentText"],
                            user: commentdata["Commentedby"],
                            time: formatDate(commentdata["CommentTime"]));
                      }).toList(),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
