

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:icodegram/firebase_options.dart';
import 'package:icodegram/login_page.dart';
import 'package:icodegram/nav_bar/home_screen.dart';
import 'package:icodegram/nav_bar/profile_screen.dart';
import 'package:icodegram/providers/user_provider.dart';
import 'package:provider/provider.dart';


void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => UserProvider())],
    child: MaterialApp(
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return const ProfileScreen();
            } else if (snapshot.hasError) {
              return Scaffold(
                body: Center(
                  child: Text('${snapshot.error}'),
                ),
              );
            }
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
            );
          }
          return const LoginPage();
        }
      ),
    ),
  ));
}