import 'package:flutter/material.dart';

class SingleScrollViewWidget extends StatelessWidget {

  void generateList(){
    List<String> textList = List.generate(30, (index) => '$index');
    for(var index = 0; index < 10; index = index + 1){
      print('$index');
    }
    print(textList);
  }
  const SingleScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Single Child Scroll View Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(50,
                  (index) => Container(
                    height: 80.0,
                    margin: EdgeInsets.all(8.0),
                    color: Colors.teal[100 * (index % 9)],
                    child: Center(
                      child: Text('Item $index', style: TextStyle(fontSize: 18.0),),
                    ),
                  )),
        ),
      ),
    );
  }
}
