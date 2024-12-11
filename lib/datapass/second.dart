import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nidflutter/datapass/dummydata.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final data=dummyproducts.firstWhere((product)=>product["id"]==id);
    return Scaffold(
    body: Container(color: Colors.blueAccent[100],width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(data["name"]),
    Image(image: AssetImage(data["image"])),
    Text(data["details"]),
    Text(data["Price"]),
    ],
    ),),
    );
  }
}
