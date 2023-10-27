import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final void Function(String) onSubmitted;
  const InputField({super.key, required this.onSubmitted});


  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: TextField(
        onSubmitted: (String value){
          widget.onSubmitted(value);
        },
        textAlign: TextAlign.start,
        textCapitalization: TextCapitalization.none,
        textInputAction: TextInputAction.none,
        controller: _textEditingController,
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
          filled: true,
          fillColor: Colors.white,
          suffixIcon: IconButton(
            onPressed: () {
              _textEditingController.clear();
            },
            icon: Image.asset('assets/images/close 1.png'),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(width: 0, style: BorderStyle.none)),
          labelText: 'Type here',
          labelStyle: TextStyle(color: Colors.orange),
        ),
        style: TextStyle(
            fontSize: 18,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600,
            height: 40 / 18,
            color: Colors.orange),
      ),
    );
  }
}
