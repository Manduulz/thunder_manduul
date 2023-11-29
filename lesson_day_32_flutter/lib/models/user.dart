import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String uid;
  final String email;
  final String name;
  final String photoUrl;
  final String bio;
  final List following;
  final List followers;

  User({
    required this.uid,
    required this.email,
    required this.name,
    required this.photoUrl,
    required this.bio,
    required this.following,
    required this.followers,
  });

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      uid: snapshot['uid'],
      email: snapshot['email'],
      name: snapshot['name'],
      photoUrl: snapshot['photoUrl'],
      bio: 'my name is khangai',
      following: snapshot['following'],
      followers: snapshot['followers'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'photoUrl': photoUrl,
      'bio': bio,
      'following': following,
      'followers': followers,
    };
  }
}
