import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icodegram/utils/firestore_methods.dart';
import 'package:icodegram/utils/utils.dart';
import 'package:icodegram/widgets/comment_card.dart';
import 'package:icodegram/widgets/comments_screen.dart';
import 'package:icodegram/widgets/like_animation.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../model/user_model.dart';
import '../providers/user_provider.dart';

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
    final User user = Provider.of<UserProvider>(context).getUser;
    return SingleChildScrollView(
      child: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 14)
                  .copyWith(right: 0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(widget.snap['profImage']),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.snap['username'].toString(),
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => Dialog(
                                  child: ListView(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.0),
                                      shrinkWrap: true,
                                      children: ['Delete']
                                          .map((e) => InkWell(
                                                onTap: () {
                                                  deletePost(widget
                                                      .snap['postId']
                                                      .toString());
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 12.0,
                                                      horizontal: 16.0),
                                                  child: Text(e),
                                                ),
                                              ))
                                          .toList(),
                                  ),
                                ));
                      },
                      icon: Icon(Icons.delete_outline, color: Colors.white,)),
                  IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              child: ListView(
                                padding:
                                EdgeInsets.symmetric(vertical: 10.0),
                                shrinkWrap: true,
                                children: ['Edit Post']
                                    .map((e) => InkWell(
                                  onTap: () {
                                    deletePost(widget
                                        .snap['postId']
                                        .toString());
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 12.0,
                                        horizontal: 16.0),
                                    child: Text(e),
                                  ),
                                ))
                                    .toList(),
                              ),
                            ));
                      },
                      icon: Icon(Icons.more_vert, color: Colors.white,)),
                ],
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.35,
            //   width: double.infinity,
            //   child: Image.network(widget.snap['postUrl'].toString()),
            // ),
            GestureDetector(
              onTap: () {
                FirestoreMethods().likesPost(
                  widget.snap['postID'].toString(),
                  user.uid,
                  widget.snap['likes'],
                );
                setState(() {
                  isLikeAnimating = true;
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                    child: Image.network(
                      widget.snap['postUrl'].toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: isLikeAnimating ? 1 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: LikeAnimation(
                      isAnimating: isLikeAnimating,
                      duration: const Duration(milliseconds: 400),
                      onEnd: () {
                        setState(() {
                          isLikeAnimating = false;
                        });
                      },
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 100,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                LikeAnimation(
                  isAnimating:
                      ((widget.snap['likes'] ?? []) as List).contains(user.uid),
                  smalllike: true,
                  child: IconButton(
                    icon: ((widget.snap['likes'] ?? []) as List)
                            .contains(user.uid)
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border,
                      color: Colors.white,
                          ),
                    onPressed: () => FirestoreMethods().likesPost(
                      widget.snap['postID'].toString(),
                      user.uid,
                      ((widget.snap['likes'] ?? []) as List),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextStyle(
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.w800),
                      child: Text(
                        '${((widget.snap['likes'] ?? []) as List).length} likes',
                        style: TextStyle(color: Colors.white)
                        // Theme.of(context).textTheme.bodyMedium,
                      )),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 8),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: widget.snap['username'].toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                            TextSpan(
                              text: '${widget.snap['description']}',
                            )
                          ]),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        'View all $commentLen comments',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CommentsScreen(
                              postID: widget.snap['postId'].toString(),
                            ))),
                  ),
                  // Container(
                  //   padding: EdgeInsets.symmetric(vertical: 2),
                  //   child: Text(
                  //     DateFormat.yMMMd()
                  //         .format(widget.snap['datePublished'].toDate()),
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
