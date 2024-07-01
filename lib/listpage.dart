import 'package:flutter/material.dart';

class listpage extends StatelessWidget {
  listpage({super.key});

  List names = ["sam", "ram", "tom", "tim", "jim", "jam"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            height: 100,
            color: Colors.yellow,
            child: Center(child: Text(names[index])),
          );
        },
      ),
    );
  }
}
