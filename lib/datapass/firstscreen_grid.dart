import 'package:flutter/material.dart';
import 'package:nidflutter/storedummy.dart';

void main(){
  runApp(MaterialApp(home: FirstscreenGrid(),
  routes: {
    "seconds":(context)
  },))
}
class FirstscreenGrid extends StatefulWidget {
  const FirstscreenGrid({super.key});

  @override
  State<FirstscreenGrid> createState() => _FirstscreenGridState();
}

class _FirstscreenGridState extends State<FirstscreenGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
          children: dummyproducts.map((products)=>GestureDetector(
          child: Card(
            child: Column(
              children: [
                Text(products["name"]),
                Image(image: AssetImage(products["image"]),height: 200,width: 200,),

              ],
            ),
          ),
          onTap: ()=>getproducts(context,products["id"]),
        ),).toList

      )
    );
    }
  Future<void>getproducts(BuildContext context,products)async{
    await Navigator.pushNamed(context, "second",arguments: products);
  }
}
