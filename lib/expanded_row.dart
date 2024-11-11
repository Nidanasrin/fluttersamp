import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Expandedeg(),));
}
class Expandedeg extends StatelessWidget {
  const Expandedeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(color: Colors.red, height: 100, width: double.infinity,),
          Expanded(child: Container(
            color: Colors.yellow, height: double.infinity, width: 100,),),
          Expanded(child: Container(
            color: Colors.blue, height: double.infinity, width: 100,),
          )
        ],
      ),
    );
  }
}