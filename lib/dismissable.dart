import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Dismissable(),));
}
class Dismissable extends StatelessWidget{
  var data=["Rachel","Monica","Chandler","joey"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.builder(itemBuilder: (context,index){
       return Dismissible(background: Container(
         color: Colors.red,
       ),
           secondaryBackground: Container(
             color: Colors.green,
           ),
           key: ValueKey(data), child:ListTile(
             title: Text(data[index]),
           ));
     },itemCount:data.length,
     ),
   );
  }

}