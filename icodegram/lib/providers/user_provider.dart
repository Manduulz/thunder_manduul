import 'package:flutter/cupertino.dart';
import '../utils/auth_methods.dart';
import '../model/user_model.dart';




class UserProvider with ChangeNotifier {
  final defaultUser = User(
    uid: '1',
    email: 'test@gmail.com',
    username: 'test',
    photoUrl: '',
    bio: 'test',
    following: [],
    followers: []
  );
  User? _user;
  final AuthMethods _authMethods = AuthMethods();

  User get getUser => _user ?? defaultUser;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}