import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Orientationbuilder(),));
}
class Orientationbuilder extends StatefulWidget {
  const Orientationbuilder({super.key});

  @override
  State<Orientationbuilder> createState() => _OrientationbuilderState();
}

class _OrientationbuilderState extends State<Orientationbuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context,orientation){
        if(orientation==Orientation.portrait){
          return Container(
            color: Colors.yellow,
            child: Center(
              child: Text("Portrait"),
            ),
          );
        }
        else{
          return Container(
            color: Colors.green,
            child: Center(
              child: Text("Landscape"),
            ),
          );
        }
      }),
    );
  }
}