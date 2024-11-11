import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: stack(),debugShowCheckedModeBanner: false,));
}

class stack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
         children: [
           Center(child: Container(color: Colors.pink[50],height: double.infinity,width: double.infinity,)),
            Positioned(height: 250,width: 502,top: 0,
          child: Container(
          decoration:
    BoxDecoration(color: Colors.grey,
borderRadius:BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))),
child: Stack(
    children: [
      Positioned(
        child: Icon(Icons.menu),left: 10,top: 10,),
      Positioned(child: Text("Profile",style: TextStyle(fontSize: 20,color: Colors.white),),left: 25,top: 90,)
    ],
    ),
    )
    ,),
    Positioned(height: 90,width: 100,
    top: 200,left: 200,
    child:
    CircleAvatar(backgroundImage: AssetImage("assets/images/princess.jpeg",)),),
           Positioned(height: 100,width: 300,top: 300,left: 180,
               child: Text("Mishal Haneef",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueGrey),)),
           Positioned(height: (500),width: 300,
           top: 350,left: 100,
           child:ListView(
             children: [
               Card(color: Colors.blue[200],
               child: ListTile(
                 leading: Icon(Icons.person),
                 title: Text("My Account"),
               ),),

           SizedBox(height: 10),
           Card(
             color: Colors.blue[200],
             child: ListTile(
               leading: Icon(Icons.dashboard),
               title: Text("Dashboard"),
             ),
           ),
           SizedBox(height: 10),
           Card(
             color: Colors.blue[200],
             child: ListTile(
               leading: Icon(Icons.info),
               title: Text("About"),
             ),
           ),
           SizedBox(height: 8),
           Card(
             color: Colors.blue[200],
             child: ListTile(
               leading: Icon(Icons.logout),
               title: Text("Logout"),
             ),
           ),
   ] ),

           )
         ],
     ),
     bottomNavigationBar: BottomNavigationBar(
       showUnselectedLabels: false,
    showSelectedLabels: false,
    selectedItemColor: Colors.blue,
       unselectedItemColor: Colors.blue,
       type: BottomNavigationBarType.fixed,
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
         BottomNavigationBarItem(icon: Icon(Icons.pie_chart),label: "Chart"),
        BottomNavigationBarItem(icon:
        SizedBox(height: 40,
        child: Card(color: Colors.teal,
        child: Row(
          children: [SizedBox(width: 35,
          child: Icon(Icons.person,color: Colors.white,),),
            Text("Account",style: TextStyle(color: Colors.white),),

          ],
        ),
        ),
        ),
        ) ],),
    );

    }
    }