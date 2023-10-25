import 'package:flutter/material.dart';
import 'package:lesson_day_17_flutter/navigation.dart';
import 'package:lesson_day_17_flutter/page_two.dart';


class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(onPressed: (){
         Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),),
        title: Text('Page One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PageTwo(),));
            }, child: Text('Go to Page Two')),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Navigation(),));
            }, child: Text('Go to Home Page'))
          ],
        ),
      ),
    );
  }
}
