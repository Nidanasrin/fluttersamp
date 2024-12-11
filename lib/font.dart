import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Gridbuildereg(),));
}
class Gridbuildereg extends StatelessWidget {

  var iconss=[Icons.alarm,Icons.account_box,Icons.food_bank];
  var name=["car","hotel","bus"];
  var colors=[ Colors.green,Colors.red,Colors.pink];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Row(
         children: [
           Text("grid view builder",style: TextStyle(color: Colors.white,fontSize: 20),),
           Text("Grid View Custom",style: GoogleFonts.abel(
             textStyle: Theme.of(context).textTheme.headlineLarge,
             fontSize: 20,
             fontWeight: FontWeight.w200,
             fontStyle: FontStyle.italic,
           ),)
         ],
       ),
       backgroundColor: Colors.blue,
     ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150,crossAxisSpacing: 10,mainAxisSpacing: 20),
          itemBuilder: (context,index){
        return Card(
          color: colors[index],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconss[index]),
              Text(name[index],style: GoogleFonts.aBeeZee(textStyle: Theme.of(context).textTheme.headlineLarge,fontSize: 15,fontWeight: FontWeight.w600,fontStyle: FontStyle.normal),),
            ],
          ),
        );
          },itemCount: iconss.length,),
    );
  }
}
