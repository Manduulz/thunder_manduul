import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

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
                  Text("Зургийн тайлбар:",
                    style: const TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      height: 18/15,
                    ),
                    textAlign: TextAlign.left,)
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
