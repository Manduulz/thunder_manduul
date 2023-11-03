import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  void _showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Alert Dialog Example'),
            content: Text('This is a simple AlertDialog in Flutter'),
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop();
              },
                  child: Text('OK'))
            ],
          );
        });
  }
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          child: Text('Show AlertDialog'),
        ),
      ),
    );
  }
}
