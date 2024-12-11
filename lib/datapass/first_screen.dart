import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nidflutter/datapass/dummydata.dart';
import 'package:nidflutter/datapass/second.dart';

void main(){
  runApp(MaterialApp(home: FirstScreen(),
  routes: {
    "second":(context)=>Detailscreen(),
  },
    ));
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: dummyproducts.map((product)=>GestureDetector(
      child: Card(
        child: Column(
          children: [
            Text(product["name"]),
            Image(image: AssetImage(product["image"]),height: 200,width: 200,
            )],
        ),
      ),
      onTap: ()=>getproduct(context,product["id"]),),
        ).toList(),
      ),
    );
  }
 Future<void> getproduct(BuildContext context,product)async{
    await Navigator.pushNamed(context, "second",arguments: product);
  }
}
