import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:icodegram/utils/storage_methods.dart';
import 'package:uuid/uuid.dart';

import '../model/post.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> uploadPost(String description, Uint8List image, String uid,
      String username, String profImage) async {
    String result = 'some error occured';
    try {
      String photoUrl =
      await StorageMethods().uploadImageToStorage('posts', image, true);
      Post post = Post(
          uid: uid,
          description: description,
          postId: Uuid().v1(),
          username: username,
          datePublished: DateTime.now(),
          postUrl: photoUrl,
          likes: null,
          profImage: profImage);

      _firestore.collection('posts').doc(post.postId).set(post.toJson());

      result = 'success';
    } catch (e) {
      result = e.toString();
    }
    return result;
  }
  Future<String> likesPost(String postID, String uid, List likes) async {
    String res = "Some error occured";
    try{
      if(likes.contains(uid)) {
        _firestore.collection('posts').doc(postID).update({
          'likes' : FieldValue.arrayRemove([uid])
        });
      } else {
        _firestore.collection('posts').doc(postID).update({
          'likes' : FieldValue.arrayUnion([uid])
        });
      }
      res = 'success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
  Future<String> postComment(String postID, String text, String uid, String name, String profilePic) async {
    String res = "Some error occured";
    try {
      if(text.isNotEmpty) {
        String commentId = const Uuid().v1();
        _firestore
            .collection('posts')
            .doc(postID)
            .collection('comments')
            .doc(commentId)
            .set({
          'profilePic' : profilePic,
          'name' : name,
          'uid' : uid,
          'text' : text,
          'commentId' : commentId,
          'datePublished' : DateTime.now(),
        });
        res = 'success';
      } else {
        res = 'Please enter text';
      }
    }catch (err) {
      res = err.toString();
    }
    return res;
  }
  Future<void> followUser(String uid, String followId) async {
    try {
      DocumentSnapshot snap =
      await _firestore.collection('users').doc(uid).get();
      List following = (snap.data()! as dynamic)['following'];

      if (following.contains(followId)) {
        await _firestore.collection('users').doc(followId).update({
          'followers' : FieldValue.arrayRemove([uid])
        });
        await _firestore.collection('users').doc(uid).update({
          'following' : FieldValue.arrayRemove([followId])
        });
      } else {
        await _firestore.collection('users').doc(followId).update({
          'followers' : FieldValue.arrayUnion([uid])
        });
        await _firestore.collection('users').doc(uid).update({
          'following' : FieldValue.arrayUnion([followId])
        });
      }
    } catch (e) {
      if (kDebugMode) print(e.toString());
    }
  }
  Future<String> deletePost(String postID) async {
    String res = "Some error occured";
    try {
      await _firestore.collection('posts').doc(postID).delete();
      res = 'Success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}

