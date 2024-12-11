import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Customscrollview(),));
}
class Customscrollview extends StatelessWidget{
  var name=["john","princess","rachel"];
  var img=["assets/images/johnwick.png","assets/images/princess.jpeg","assets/images/sdfd.jpg"];
  var num=["12345","567678","234567"];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(backgroundColor: Colors.yellow[200],
          floating: true,
          pinned: true,
          expandedHeight: 140,
          title: Text("Sliver ui"),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
            IconButton(onPressed: (){}, icon: Icon(Icons.person)),
          ],
          bottom: AppBar(backgroundColor: Colors.yellow[200],
            title: Container(
              color: Colors.greenAccent[100],
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Something!!",
                  prefixIcon: Icon(Icons.search)
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child:Container(
            height: 100,width: double.infinity,
            child: Card(
              color: Colors.lightBlueAccent,
              child: Center(child: Text("Flutter",style: TextStyle(fontWeight: FontWeight.bold),),),

            ),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context,index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(img[index]),),
              title: Text(name[index]),
              subtitle: Text(num[index]),
            ),
          );
    },childCount: name.length)),
        SliverGrid(delegate: SliverChildBuilderDelegate((context,index){
          return Card(
            child: Image(image: AssetImage(img[index]),
          fit: BoxFit.fill,),);
        },childCount: img.length),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),)
      ],
    ),
  );
  }
  
}