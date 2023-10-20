import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.dashboard),
        title: Text('Welcome to Flutter'),
        // elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          Icon(Icons.add),
          Icon(Icons.edit),
          Icon(Icons.abc)
        ],
      ),
      body: Container(
        color: Colors.teal,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.red,
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.indigo,
          child: Text('I am a drawer'),
        ),
      ),
    );
  }
}
