import 'package:flutter/material.dart';

class TextFieldWidgetTwo extends StatefulWidget {
  final void Function(String) onSubmitted;
  const TextFieldWidgetTwo({super.key, required this.onSubmitted});

  @override
  State<TextFieldWidgetTwo> createState() => _TextFieldWidgetTwoState();
}

class _TextFieldWidgetTwoState extends State<TextFieldWidgetTwo> {
  final TextEditingController _controller = TextEditingController();
  String _inputValue = "";


  @override
  void dispose() {
    _controller
    .dispose();
    super.dispose();
  }

  void _clearText() {
    _controller.clear();
    setState(() {});
  }

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
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter Text',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: _clearText,
                )
              ),
              onChanged: (value) {
                setState(() {
                  _inputValue = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text("Entered Text: ${_controller.text}")
          ],
        ),
      ),
    );
  }
}
