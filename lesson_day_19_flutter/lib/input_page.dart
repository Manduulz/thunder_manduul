import 'package:flutter/material.dart';
import 'package:lesson_day_19_flutter/display_page.dart';
import 'package:lesson_day_19_flutter/models/user.dart';
import 'dart:core';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _editingController = TextEditingController();
  int? _age;
  String? _name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
              ),
              onChanged: (value) {
                setState(() {
                  _name = value.isNotEmpty ? value : null;
                });
              },
            ),
            TextField(
              controller: _editingController,
              decoration: const InputDecoration(
                labelText: 'Enter your age (25,26,27...etc)',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _age = int.tryParse(value);
                });
              },
            ),
            if (_name != null && _name!.isNotEmpty && _age != null)
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  final user = User(age: _age!, name: _name!);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DisplayPage(user: user)));
                },
              ),
          ],
        ),
      ),
    );
  }
}
