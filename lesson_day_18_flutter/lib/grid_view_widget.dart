import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  final List<String> items = List.generate(100, (index) => "Item $index");
  GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Widget"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
          ),
        padding: EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Text(
                  items[index],
                ),
              ),
            );
        },
          ),
    );
  }
}
