import 'package:flutter/material.dart';
import 'package:nidflutter/customwidget.dart';
import 'package:nidflutter/datepick.dart';
void main(){
  runApp(MaterialApp(home: Customui(),debugShowCheckedModeBanner: false,));
}
class Customui extends StatelessWidget {
  const Customui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Customwidgett(title: Text("Nidhaa"), img: Image(image: AssetImage("assets/images/grand.jpg")), onpress: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Datepick()));
        }),
      ),
    );
  }
}
