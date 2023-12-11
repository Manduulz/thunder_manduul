import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CommentCard extends StatelessWidget {
  final snap;
  const CommentCard({super.key, required this.snap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              snap.data()['profilePic'],
            ),
            radius: 18,
          ),
          Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: snap.data()['name'],
                            style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                          TextSpan(
                            text: '${snap.data()['text']}',
                          ),
                        ]
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 4),
                    child: Text(
                      DateFormat.yMMMd().format(
                        snap.data()['datePublished'].toDate(),
                      ),
                      style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400
                      ),
                    ),)
                  ],
                ),
              )
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.favorite,
              size: 16,
            ),
          )
        ],
      ),
    );
  }
}
