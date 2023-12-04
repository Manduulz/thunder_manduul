import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lesson_day_34_flutter/add_post_screen.dart';
import 'package:lesson_day_34_flutter/firebase_options.dart';
import 'package:lesson_day_34_flutter/home_screen.dart';
import 'package:lesson_day_34_flutter/layouts/navigation_bar_app.dart';
import 'package:lesson_day_34_flutter/providers/user_provider.dart';
import 'package:provider/provider.dart';

import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => UserProvider())],
    child: MaterialApp(
        home: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            return const NavigationBarApp();
          } else if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text('Error occurred: ${snapshot.error}'),
              ),
            );
          }
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
          );
        }
        return const LoginScreen();
      },
    )),
  ));
}
