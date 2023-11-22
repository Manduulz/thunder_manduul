import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:icodegram/firebase_options.dart';
import 'package:icodegram/login_page.dart';
import 'package:icodegram/nav_bar/screen_layout.dart';
import 'package:icodegram/register_page.dart';

void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: ScreenLayout(),
  ));
}