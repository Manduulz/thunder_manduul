import 'package:flutter/material.dart';
import 'package:lesson_day_27_flutter/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  print('It is succesfully initialized');
//   ThemeData data = ThemeData(
// fontFamily: 'Montserrat',
//     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//     brightness: Brightness.light,
//     primaryColor: Colors.blue,
//     textTheme: TextTheme(
//       displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//       displayMedium: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//       displaySmall: TextStyle(fontSize: 14.0),
//     )
//   );
  runApp(MaterialApp(
    // theme: data,
    home: SignUpPage(),
    // home: Scaffold(
    //   appBar: AppBar(
    //     title: Text('Theme Data'),
    //   ),
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Text('Display Large',
    //         style: data.textTheme.displayLarge,),
    //         Text('Display Medium',
    //         style: data.textTheme.displayMedium,),
    //         Text('Display Small',
    //         style: data.textTheme.displaySmall,),
    //         TextThemeWidget(),
    //         TextFieldWidget()
    //       ],
    //     ),
    //   ),
    // ),
  ));
}

