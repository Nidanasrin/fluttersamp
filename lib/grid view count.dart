import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridviewcount(),));
}
class Gridviewcount extends StatefulWidget {
  const Gridviewcount({super.key});

  @override
  State<Gridviewcount> createState() => _GridviewcountState();
}
  class _GridviewcountState extends State<Gridviewcount>{
    var Iconss=[Icons.import_contacts_sharp,Icons.add_card,Icons.add_alert,Icons.account_balance,Icons.camera_alt,Icons.accessible_rounded,
  Icons.add];

    var name=["contacts_sharp","add_card","add_alert","account_balance","camera_alt","accessible_roundedd","add"];
  var color=[Colors.amberAccent,Colors.black12,Colors.blueGrey,Colors.indigoAccent,Colors.lightBlueAccent,Colors.red,Colors.orange];

    @override
  Widget build(BuildContext context){
      return Scaffold(
      appBar: AppBar(
      title: Text("gridview count"),),
  body: GridView.count(crossAxisCount: 3,children:
    List.generate(Iconss.length, (index)=>
  Card(
  color: color[index],
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Iconss[index]),
  Text(name[index]),
  ],
  ),
  ),
  ),)
      );
  }
}
