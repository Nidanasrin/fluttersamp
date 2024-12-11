import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: clipereg(),));
}
class clipereg extends StatelessWidget {
  const clipereg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipRect(
            child: Image(image: AssetImage("assets/images/swizz1.jpg")),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Image(image: AssetImage("assets/images/swizz2.jpg")),
          ),
          ClipOval(
            child: Container(child: Image(image: AssetImage("assets/images/swizz3.jpg")),),
          ),
        ],
      ),
    );
  }
}
