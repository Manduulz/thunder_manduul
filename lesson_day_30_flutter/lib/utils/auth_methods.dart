import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<String> loginUser({
    required String email,
    required String password,
}) async {
    String result = "Some Error occured";
    try {
      if(email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(email: email, password: password);
        result = "success";
      }
    } catch (e) {
      result = e.toString();
    }
    print(result);
    return result;
  }
}