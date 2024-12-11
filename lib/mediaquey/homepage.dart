
import 'package:flutter/material.dart';
import 'package:nidflutter/mediaquey/responsive.dart';
import 'package:nidflutter/mediaquey/right_widget.dart';

import 'centerwidget.dart';
import 'left_widget.dart';

void main(){
  runApp(MaterialApp(home: Homepage(),debugShowCheckedModeBanner: false,));
}
class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !Responsive.isTab(context) ?AppBar(title: Text("Screen"),

      ) :null,
      drawer: Drawer(child: leftwidget(),),


      body: Row(
          children: [
            if(Responsive.isweb(context))
              Expanded(child: leftwidget(),flex: 2,),
            Expanded(child: Centerwidget(),flex: 5,),
            if(Responsive.isweb(context))
              Expanded(child: Rightwidget(),flex: 3,),
          ],
         ),);
    }
}