import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: expandedtile(),));
}
class expandedtile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            child: ExpansionTile(title: Text("Light color"),
            subtitle: Text("Data"),
            children: [
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.yellow[100],),
                title: Text("Light yellow"),),
    ListTile(
    leading: CircleAvatar(backgroundColor: Colors.blue[200],),
      title: Text("Light blue"),),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.red[200],),
                title: Text("Light red"),),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.green[200],),
                title: Text("Light green"),
              ),

            ],),),
          Card(
            child:
            ExpansionTile(title: Text("Dark colors"),
            subtitle: Text("data"),
            children: [
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.yellow,),
                title: Text("Yellow"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blue,),
                title: Text("Blue"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.red,),
                title: Text("Red"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.green,),
                title: Text("Green"),
              ),
            ],),
          )
        ],
      ),
    );


  }
}