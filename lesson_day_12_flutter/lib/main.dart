import 'package:flutter/material.dart';

void main() {
  runApp(Main02());
}

class Main extends StatelessWidget {
  const Main({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData(primarySwatch: Colors.red),
      home: Text('Hello'),
    );
  }
}
class Main01 extends StatelessWidget {
  const Main01({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Themed MaterialApp',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Container(
          child: Center(child: Text('Main 01 - Example -1')),
        ),
      ),
    );
  }
}
class Main02 extends StatelessWidget {
  const Main02({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData(
        fontFamily: 'ComicNeue-Regular',
      ),
      home:  Scaffold(
        body: Container(
          child: Center(
            child: Text(
              'Custom Font',
              style: TextStyle(fontSize: 40,
              fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900
              ),
            ),
          ),
        ),
      ),
    );
  }
}


