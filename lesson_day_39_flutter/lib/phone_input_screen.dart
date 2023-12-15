import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lesson_day_39_flutter/otp_screen.dart';

class PhoneNumberInputScreen extends StatefulWidget {

  @override
  State<PhoneNumberInputScreen> createState() => _PhoneNumberInputScreenState();
}

class _PhoneNumberInputScreenState extends State<PhoneNumberInputScreen> {
  final _phoneController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void _sendCode() async {
    String phone = _phoneController.text.trim();

    await _auth.verifyPhoneNumber(
      phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) async{

        },
        verificationFailed: (FirebaseAuthException e) {

        },
        codeSent: (String verificationId, int? resendToken) {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => OTPScreen(verificationId: verificationId)));
        },
        codeAutoRetrievalTimeout: (String verificationId) {

        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Enter Phone Number')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
            ),
            ElevatedButton(onPressed: _sendCode, child: Text('Send Code'))
          ],
        ),
      ),
    );
  }
}
