import 'package:flutter/material.dart';
import 'package:lesson_day_17_flutter/page_one.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text('Back to Page One'))
          ],
        ),
      ),
      appBar: AppBar(
        leading: ElevatedButton(onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PageOne(),));
        },
        child: Icon(Icons.arrow_back),),
        title: Text('Page Two'),
      ),
    );
  }
}
