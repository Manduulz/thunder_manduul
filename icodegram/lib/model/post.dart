import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String uid;
  final String description;
  final String postId;
  final String username;
  final DateTime datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  Post({
    required this.uid,
    required this.description,
    required this.postId,
    required this.username,
    required this.datePublished,
    required this.postUrl,
    required this.likes,
    required this.profImage,
  });

  static Post fromSnap (DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post (
      uid: snapshot['uid'],
      description: snapshot['description'],
      username: snapshot['username'],
      datePublished: snapshot['datePyblished'],
      postId: snapshot['postId'],
      likes: snapshot['likes'],
      postUrl: snapshot['postUrl'],
      profImage: snapshot['profImage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid' : uid,
      'description' : description,
      'username' : username,
      'datePublished' : datePublished,
      'postId' : postId,
      'likes' : likes,
      'postUrl' : postUrl,
      'profImage' : profImage,
    };
  }
}