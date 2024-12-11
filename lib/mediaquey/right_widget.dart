import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nidflutter/mediaquey/responsive.dart';


class Rightwidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: Responsive.isweb(context)?double.infinity:200,
        color: Colors.red[100],
        child: Text("data"),
       );
    }
}