import 'package:flutter/material.dart';
import 'package:lesson_day_17_flutter/page_one.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home',
        style: Theme.of(context).textTheme.headlineMedium
        ),
      ),
      appBar: AppBar(
        leading: ElevatedButton(onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const PageOne())
          );
        },
        child: Icon(Icons.arrow_forward),),
        title: Text('Home'),
      ),
    );
  }
}
