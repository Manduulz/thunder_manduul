import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icodegram/utils/firestore_methods.dart';
import 'package:icodegram/utils/utils.dart';



class PostCard extends StatefulWidget {
  final snap;
  const PostCard({super.key, this.snap});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  int commentLen = 0;
  bool isLikeAnimating = false;

  @override
  void initState() {
    super.initState();
    fetchCommentLen();
  }

  fetchCommentLen() async {
    try {
      QuerySnapshot snap = await FirebaseFirestore.instance
          .collection('posts')
          .doc(widget.snap['postID'])
          .collection('comments')
          .get();
      commentLen = snap.docs.length;
    } catch (err) {
      showSnackBar(context, err.toString());
    }
  }

  deletePost(String postID) async {
    try {
      await FirestoreMethods().deletePost(postID);
    } catch (err) {
      showSnackBar(context, err.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16)
              .copyWith(right: 0),
          child: Row(children: [
            CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(widget.snap['profImage']),
            ),
            SizedBox(height: 8,),
            Expanded(child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.snap['username'].toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            ),
            IconButton(
                onPressed: (){
                  showDialog(context: context, builder: (context) => Dialog(
                    child: ListView(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        shrinkWrap: true,
                        children: [
                          'Delete'
                        ].map(
                                (e) => InkWell(
                              onTap: () {
                                deletePost(widget.snap['postID'].toString());
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                                child: Text(e),
                              ),
                            )
                        ).toList(
                        )
                    ),
                  ));
                },
                icon: Icon(Icons.more_vert)
            )
          ],),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.35,
          width: double.infinity,
          child: Image.network(widget.snap['postUrl'].toString()),)
      ],),
    );
  }
}