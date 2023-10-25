import 'package:flutter/material.dart';

class TextFieldWidgetOne extends StatefulWidget {
  const TextFieldWidgetOne({super.key});

  @override
  State<TextFieldWidgetOne> createState() => _TextFieldWidgetOneState();
}

class _TextFieldWidgetOneState extends State<TextFieldWidgetOne> {
  String _inputValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Text',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _inputValue = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text("Entered Text: $_inputValue")
          ],
        ),
      ),
    );
  }
}
