import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Stack(),));
}
class Stackeg extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
    body: Center(
      child: Stack(
        children: [
          Center(child: Container(color: Colors.yellow,height: 400,width: 400,),),
          Center(child: Container(color: Colors.pink,height: 300,width: 300,),),
          Center(child: Container(color: Colors.white,height: 200,width: 200,),),
        ],
      ),
    ),
   );
  }
}
