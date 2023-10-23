import 'package:flutter/material.dart';

class TestStateScreen extends StatefulWidget {
  const TestStateScreen({super.key});

  @override
  State<TestStateScreen> createState() => _TestStateScreenState();
}

class _TestStateScreenState extends State<TestStateScreen> {

  String word = 'chi';
  void _appendWord(){
    setState(() {
      word = word + ' teneg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(this.word, style: TextStyle(fontSize: 30),),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),

            IconButton(onPressed: this._appendWord,
                icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
