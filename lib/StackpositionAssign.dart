import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Stackpos(),));
}
class Stackpos extends StatelessWidget {
  const Stackpos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Center(child: Container(
              color: Colors.pink[100],
              height: double.infinity,
              width: double.infinity,)),
            Positioned(height: 300, width: 560, top: 0,
              child: Container(
                decoration: BoxDecoration(color: Colors.purple[700],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(40),
                  ),),
              ),
            ),
            Positioned(top: 20, left: 20,
                child: Icon(Icons.arrow_back, color: Colors.white,)),
            Positioned(
              height: 100,
              width: 100,
              left: 200,
              top: 100,
              child: Container(decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(60)),),
              ),
            ),
            Positioned(height: 160,
                width: 160,
                top: 90,
                left: 455,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white12,
                      borderRadius: BorderRadius.all(Radius.circular(100))),)),
            Positioned(height: 40,
                width: 40,
                top: 30,
                right: 150,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white12,
                      borderRadius: BorderRadius.all(Radius.circular(100))),)),
            Positioned(height: 100,
                width: 100,
                bottom: 570,
                right: 200,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white12,
                      borderRadius: BorderRadius.all(Radius.circular(100))),)),
            Positioned(height: 160,
                width: 160,
                bottom: 460,
                right: 430,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white12,
                      borderRadius: BorderRadius.all(Radius.circular(100))),)),
            Positioned(height: 160,
                width: 160,
                top: 70,
                left: 170,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white24,
                      borderRadius: BorderRadius.all(Radius.circular(100))),)),
            Positioned(height: 120,
                width: 120,
                top: 90,
                left: 190,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white54,
                      borderRadius: BorderRadius.all(Radius.circular(90))),)),
            Positioned(
              height: 100,
              width: 250,
              left: 120,
              top: 250,
              child: Container(decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20),)
              )),),

            Positioned(height: 100,
                width: 200,
                left: 215,
                top: 125,
                child: Text("your Score",
                  style: TextStyle(fontSize: 15, color: Colors.purple,
                  ),)),
            Positioned(height: 100,
                width: 100,
                top: 150,
                left: 225,
                child: Text("150pt", style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),)),

            Positioned(
              height: 90,
              width: 210,
              top: 230,
              left: 36,
              child: Icon(Icons.circle, size: 8, color: Colors.purple,),),

            Positioned(
              height: 90,
              width: 210,
              top: 265,
              left: 155,
              child: Text("100%",
                style: TextStyle(color: Colors.purple, fontSize: 12),),),

            Positioned(
              height: 100,
              width: 210,
              left: 152,
              top: 280,
              child: Text("completion",
                style: TextStyle(color: Colors.black, fontSize: 10),),
            ),
            Positioned(
              height: 90,
              width: 210,
              top: 230,
              right: 115,
              child: Icon(Icons.circle, size: 8, color: Colors.purple,),),

            Positioned(
              height: 90,
              width: 210,
              top: 265,
              right: 0,
              child: Text(
                "20", style: TextStyle(color: Colors.purple, fontSize: 12),),),

            Positioned(
              height: 100,
              width: 210,
              right: 8,
              top: 282,
              child: Text("Total Question",
                style: TextStyle(color: Colors.black, fontSize: 10),),
            ),
            Positioned(
              height: 90,
              width: 210,
              top: 275,
              left: 36,
              child: Icon(Icons.circle, size: 8, color: Colors.purple,),),
            Positioned(
              height: 90,
              width: 210,
              top: 310,
              left: 155,
              child: Text(
                "13", style: TextStyle(color: Colors.green, fontSize: 12),),),

            Positioned(
              height: 100,
              width: 210,
              left: 152,
              top: 325,
              child: Text("correct",
                style: TextStyle(color: Colors.black, fontSize: 10),),
            ),
            Positioned(
              height: 90,
              width: 210,
              top: 275,
              right: 115,
              child: Icon(Icons.circle, size: 8, color: Colors.purple,),),

            Positioned(
              height: 90,
              width: 210,
              top: 310,
              right: 0,
              child: Text(
                "07", style: TextStyle(color: Colors.red, fontSize: 12),),),

            Positioned(
              height: 100,
              width: 210,
              right: 6,
              top: 325,
              child: Text(
                "Wrong", style: TextStyle(color: Colors.black, fontSize: 10),),
            ),
            Positioned(
              height: 4,
              width: 4,
              bottom: 10,
              left: 10,
              child: CircleAvatar(backgroundColor: Colors.blueGrey,
                child: Icon(Icons.refresh, color: Colors.white,),
              ),
            ),
            Positioned(bottom: 160, left: 80,
                child: CircleAvatar(backgroundColor: Colors.blueGrey,
                  child: Icon(Icons.refresh, color: Colors.white,
                  ),)),
            Positioned(bottom: 140, left: 65,
                child: Text("Play Again",
                  style: TextStyle(color: Colors.black, fontSize: 13),)),
            Positioned(bottom: 160, left: 220,
                child: CircleAvatar(backgroundColor: Colors.brown,
                  child: Icon(Icons.remove_red_eye, color: Colors.white,
                  ),)),
            Positioned(bottom: 140, left: 200,
                child: Text("Review Answer",
                  style: TextStyle(color: Colors.black, fontSize: 13),)),
            Positioned(bottom: 160, left: 370,
                child: CircleAvatar(backgroundColor: Colors.purple[600],
                  child: Icon(Icons.share, color: Colors.white,
                  ),)),
            Positioned(bottom: 140, left: 350,
                child: Text("Share score",
                  style: TextStyle(color: Colors.black, fontSize: 13),)),
            Positioned(bottom: 60, left: 75,
                child: CircleAvatar(backgroundColor: Colors.blue,
                  child: Icon(Icons.sim_card, color: Colors.white,
                  ),)),
            Positioned(bottom: 40, left: 55,
                child: Text("Generate PDF",
                  style: TextStyle(color: Colors.black, fontSize: 13),)),
            Positioned(bottom: 60, left: 220,
                child: CircleAvatar(backgroundColor: Colors.pinkAccent,
                  child: Icon(Icons.home, color: Colors.white,
                  ),)),
            Positioned(bottom: 40, left: 205,
                child: Text("Share score",
                  style: TextStyle(color: Colors.black, fontSize: 13),)),
            Positioned(bottom: 60, left: 370,
                child: CircleAvatar(backgroundColor: Colors.grey,
                  child: Icon(Icons.settings_suggest, color: Colors.white,
                  ),)),
            Positioned(bottom: 40, left: 350,
                child: Text("Leaderboard",
                  style: TextStyle(color: Colors.black, fontSize: 13),)),
          ]),
    );
  }
    }