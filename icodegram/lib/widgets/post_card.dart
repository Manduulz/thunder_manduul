import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class PostCard extends StatelessWidget {
  final snap;
  const PostCard({super.key, this.snap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16)
              .copyWith(right: 0),
          child: Row(children: [
            CircleAvatar(
              radius: 16,
              child: SvgPicture.asset('assets/images/battery.svg'),

            ),
            SizedBox(height: 8,),
            Expanded(child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Янаг Элбэгээ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            ),
            IconButton(
                onPressed: (){
                  showDialog(context: context, builder: (context) => Dialog(
                    child: ListView(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        shrinkWrap: true,
                        children: [
                          'Delete'
                        ].map(
                                (e) => InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                                child: Text(e),
                              ),
                            )
                        ).toList(
                        )
                    ),
                  ));
                },
                icon: Icon(Icons.more_vert)
            )
          ],),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.35,
          width: double.infinity,
          child: Image.network('https://www.ctvnews.ca/polopoly_fs/1.1343629.1372297282!/httpImage/image.jpg_gen/derivatives/landscape_1020/image.jpg'),)
      ],),
    );
  }
}