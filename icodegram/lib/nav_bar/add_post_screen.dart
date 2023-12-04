import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:icodegram/login_page.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/firestore_methods.dart';
import '../utils/utils.dart';

class AddPostScreen extends StatefulWidget {
  AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  Uint8List? _image;
  final TextEditingController _photoDetailEditor = TextEditingController();

  _selectImage(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('Create Post'),
            children: [
              SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                onPressed: () async {
                  Navigator.pop(context);
                  Uint8List? image = await pickImage(ImageSource.camera);
                  setState(() {
                    _image = image;
                  });
                },
                child: const Text('Photo with Camera'),
              ),
              SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                onPressed: () async {
                  Navigator.pop(context);
                  Uint8List? image = await pickImage(ImageSource.gallery);
                  setState(() {
                    _image = image;
                  });
                },
                child: const Text('Image from Gallery'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
            ],
          );
        });
  }

  @override
  void dispose() {
    _photoDetailEditor.dispose();
    super.dispose();
  }

  void clearImage() {
    setState(() {
      _image = null;
    });
  }

  void postImage(String uid, String username, String profImage) async {
    try {
      String result = await FirestoreMethods().uploadPost(
          _photoDetailEditor.text, _image!, uid, username, profImage);

      if (result == 'success') {
        showSnackBar(context, 'Post uploaded');
        clearImage();
      } else {
        showSnackBar(context, result);
      }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    var imageWidget =
        _image == null ? const NetworkImage('url') : MemoryImage(_image!);
    bool showImage = false;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/u_angle-left-b.png')),
        title: Text(
          'Зураг оруулах',
          style: TextStyle(
            fontFamily: 'Rubik',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            height: 18 / 16,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Opacity(
              opacity: 1,
              child: Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                    color: Colors.orange.withAlpha(30),
                    borderRadius: BorderRadius.circular(34)),
                margin: EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DottedBorder(
                    color: Colors.orange,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(34),
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(34)),
                      child: showImage ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: IconButton(
                                onPressed: () {
                                  _selectImage(context);
                                },
                                icon:
                                    Image.asset('assets/images/addImage.png')),
                          ),
                          SizedBox(
                              height: 45,
                              width: 45,
                              child: AspectRatio(
                                aspectRatio: 487 / 451,
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: _image == null
                                          ? DecorationImage(
                                              fit: BoxFit.fill,
                                              alignment:
                                                  FractionalOffset.topCenter,
                                              image: NetworkImage(
                                                  'https://images.unsplash.com/photo-1618042164219-62c820f10723?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'))
                                          : DecorationImage(
                                              fit: BoxFit.fill,
                                              alignment:
                                                  FractionalOffset.topCenter,
                                              image: MemoryImage(_image!))),
                                ),
                              )),
                          const Center(
                            child: Text(
                              'Зураг оруулах',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ): Image.network(
                        'https://images.unsplash.com/photo-1495954484750-af469f2f9be5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Image.asset('assets/images/wrapText.png'),
                  Text(
                    "Зургийн тайлбар:",
                    style: const TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      height: 18 / 15,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.grey.withAlpha(50),
                    borderRadius: BorderRadius.circular(22)),
                child: TextField(
                  maxLines: 5,
                  controller: _photoDetailEditor,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      // fillColor: Colors.grey,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(color: Colors.grey)),
                      hintText: 'Энд бичнэ үү',
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        onPressed: _photoDetailEditor.clear,
                        padding: EdgeInsets.only(bottom: 40),
                        icon: Icon(
                          Icons.clear,
                          color: Colors.grey,
                        ),
                      )),
                ),
              ),
            ),
            SizedBox(height: 280),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.withAlpha(180),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                onPressed: () {
                  postImage(newUser.uid, newUser.username, newUser.photoUrl);
                },
                child: Container(
                  width: 355,
                  height: 45,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Постлох',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Rubik'),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
