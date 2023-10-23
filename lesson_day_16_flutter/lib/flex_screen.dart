import 'package:flutter/material.dart';
import 'package:lesson_day_16_flutter/labeled_container.dart';

class FlexScreen extends StatelessWidget {
  const FlexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      title: Text('Flexible and Expanded'),
    ),
      body: Column(
        children: [
          ..._header(context, 'Flexible'),
          _buildExpanded(context),
          ..._header(context, 'Expanded'),
          _buildFlexible(context),
          Expanded(child: Container()),
          _buildFooter(context)
        ],
      ),
    );
  }
  Iterable<Widget>_header(BuildContext context, String text){
    return[
      SizedBox(
        height: 20,
      ),
      Text(text,
        style: Theme.of(context).textTheme.headlineMedium)
    ];
  }
  Widget _buildExpanded(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          LabeledContainer(color: Colors.purple, text: '100', width: 100,),
          Expanded(
              child: LabeledContainer(
                color: Colors.blueAccent, text: 'Expanded',
              ) ),
          LabeledContainer(color: Colors.pink, text: '40', width: 40,)
        ],
      ),
    );
  }

  Widget _buildFlexible(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Flexible(
              flex: 1,
              child: LabeledContainer(
            color: Colors.deepOrange,
            text: '25%',
          )),
          Flexible(
              flex: 1,
              child: LabeledContainer(
                color: Colors.deepPurple,
                text: '25%',
              )),
          Flexible(
              flex: 2,
              child: LabeledContainer(
                color: Colors.deepOrange,
                text: '50%',
              )),
        ],
      ),
    );
  }
  Widget _buildFooter(BuildContext context){
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
          child: Text(
            'Pinned to bottom',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}
