import 'package:cw6/Building.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
   DetailsPage({super.key, required this.yousef});

  final Building yousef;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 100, 30, 10),
             child: Text(yousef.name)),
          Image.network(yousef.imgUrl),
        ],
      )),
    );
  }
}