import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridviewcountex(),));
}
class Gridviewcountex extends StatefulWidget {
  const Gridviewcountex({super.key});

  @override
  State<Gridviewcountex> createState() => _GridviewcountexState();
}
class _GridviewcountexState extends State<Gridviewcountex>{
  var Iconsss=[Icons.import_contacts_sharp,Icons.add_card,Icons.add_alert,Icons.account_balance,Icons.camera_alt,Icons.accessible_rounded,
    Icons.add];

  var name=["contacts_sharp","add_card","add_alert","account_balance","camera_alt","accessible_roundedd","add"];
  var color=[Colors.amberAccent,Colors.black12,Colors.blueGrey,Colors.indigoAccent,Colors.lightBlueAccent,Colors.red,Colors.orange];

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
        title: Text("data"),),
      body: GridView.extent(maxCrossAxisExtent: 200,
      children: List.generate(Iconsss.length, (index)=>
    Card(
    elevation: 10,
    shadowColor: Colors.pink,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
    color: color[index],
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Iconsss[index]),
    Text(name[index]),
    ],
    ),
    ),
    ),
    ),
    );
  }
}