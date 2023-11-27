import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddPostScreen extends StatelessWidget {
  final TextEditingController _photoDetailEditor = TextEditingController();
  final photoDetail;
  AddPostScreen({super.key, this.photoDetail});

  @override
  Widget build(BuildContext context) {
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: IconButton(
                                onPressed: () {},
                                icon:
                                    Image.asset('assets/images/addImage.png')),
                          ),
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
                  borderRadius: BorderRadius.circular(8)
                )
              ),
                onPressed: (){},
                child: Container(
                  width: 355,
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Постлох',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Rubik'
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
