import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Stackeg(),));
}
class Stackeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Stack(
         children: [
           Center(child: Container(color: Colors.black,height: double.infinity,width: double.infinity,),),
           Positioned(child: Container(color: Colors.pink,),height: 600,width: 600,top: 200,),
           Positioned(child: Container(color: Colors.yellow,height: 400,width: 400,))
         ],
       ),
     ),
   );
  }

}