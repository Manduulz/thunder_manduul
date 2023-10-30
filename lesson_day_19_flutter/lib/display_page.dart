import 'package:flutter/material.dart';

import 'models/user.dart';

class DisplayPage extends StatelessWidget {
  final User user;
  const DisplayPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${user.name}'),
            Text('Age: ${user.age}')
          ],
        ),
      ),
    );
  }
}
