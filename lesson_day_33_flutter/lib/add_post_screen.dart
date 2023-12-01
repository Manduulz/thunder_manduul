import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lesson_day_33_flutter/firestore_methods.dart';
import 'package:lesson_day_33_flutter/providers/user_provider.dart';
import 'package:lesson_day_33_flutter/utils.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final TextEditingController _descriptionController = TextEditingController();
  Uint8List? _image;

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
    _descriptionController.dispose();
    super.dispose();
  }
  void clearImage(){
    setState(() {
      _image = null;
    });
  }

  void postImage(String uid, String username, String profImage) async {
    try {
      String result = await FirestoreMethods().uploadPost(
          _descriptionController.text, _image!, uid, username, profImage);

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
    final User user = Provider.of<UserProvider>(context).getUser;

    return _image == null
        ? Scaffold(
          body: Center(
              child: IconButton(
                icon: const Icon(Icons.add_a_photo),
                onPressed: () {
                  _selectImage(context);
                },
              ),
            ),
        )
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                  icon: const Icon(Icons.arrow_back), onPressed: () => {
                    clearImage()
              }),
              title: const Text(
                'Add Post',
                style: TextStyle(color: Colors.black),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      postImage(user.uid, user.name, user.photoUrl);
                    },
                    child: const Text(
                      'Post',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            body: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(user.photoUrl),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: TextField(
                        controller: _descriptionController,
                        maxLines: 8,
                        decoration: const InputDecoration(
                            hintText: 'Whats on your mind?',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none),
                      )),
                  SizedBox(
                      height: 45,
                      width: 45,
                      child: AspectRatio(
                        aspectRatio: 487 / 451,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  alignment: FractionalOffset.topCenter,
                                  image: MemoryImage(_image!))),
                        ),
                      ))
                ],
              ),
            ]),
          );
  }
}
