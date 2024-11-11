import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Flexibleui(),));
}
class Flexibleui extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         Flexible(flex: 2,
             child: Container(color: Colors.yellow,)),
         Flexible(flex: 3,
             child: Container(color: Colors.lightGreen,)),
         Flexible(flex: 1,
             child: Container(color: Colors.blue,))
       ],
     ),
   );
  }

}