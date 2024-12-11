import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customwidgett extends StatelessWidget {
  final Text title;
  final Text? subtitle;
  final Image img;
  final Color? clr;
  VoidCallback onpress;

  Customwidgett({required this.title, this.subtitle, required this.img, this.clr,required this.onpress});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: ListTile(
          leading: img,
          title: title,
          subtitle: subtitle,
          onTap: onpress,
        ),
      ),
    );
  }
}
