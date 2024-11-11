
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: GridViewBuliderAssignment(),
    debugShowCheckedModeBanner: false,
  ));
}

class GridViewBuliderAssignment extends StatelessWidget {
  GridViewBuliderAssignment({super.key});

  var Iconss = [
    Icons.directions_car,
    Icons.directions_bike_sharp,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_train,
    Icons.directions_walk,
    Icons.contact_mail_outlined,
    Icons.duo,
    Icons.hourglass_bottom_outlined,
    Icons.mobile_friendly,
    Icons.message,
    Icons.key,
    Icons.wifi,
    Icons.bluetooth,
    Icons.emoji_emotions
  ];
  var name = [
    "CAR",
    "BICYCLE",
    "BOAT",
    "BUS",
    "TRAIN",
    "WALK",
    "CONTACT",
    "DUO",
    "HOUR",
    "MOBILE",
    "MESSAGE",
    "KEY",
    "WIFI",
    "BLUETOOTH",
    "SMILE"
  ];
  var colr = [
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.pink,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.red,
    Colors.pink,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.red
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title: Text("Grid View Builder",style: TextStyle(color: Colors.white),),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Text("GridViewCoustom",style: TextStyle(color: Colors.white),),
        )],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 5, crossAxisSpacing: 5, crossAxisCount: 5),
        itemBuilder: (context, index) {
          return Card(
            color: colr[index],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Iconss[index],
                ),
                Text(
                  name[index],
                  style: GoogleFonts.aBeeZee(
                      textStyle: Theme.of(context).textTheme.headlineLarge,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic),
                )
              ],
            ),
          );
        },
        itemCount: Iconss.length,
      ),
    );
  }
}