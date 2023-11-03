import 'package:flutter/material.dart';
import 'package:word_find_app/components/word_search_widget.dart';
import 'package:word_find_app/components/gradient_letter.dart';
import 'package:word_search_safety/word_search_safety.dart';

class GridViewWidget extends StatefulWidget {

  GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
          ),
          padding: EdgeInsets.all(10),

          shrinkWrap: false,
          itemBuilder: (context, index){
            return LayoutBuilder (builder: (context, constraints){
              return Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: TextButton(
                onPressed: () {},
                child: SizedBox(
                  width: 40,

                ),
              )

            );
              },);

          }),
    );
  }
}
