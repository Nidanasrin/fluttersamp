import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: atmui(),));
}
class atmui extends StatelessWidget {
  const atmui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
            children: [
              Center(
                child: Positioned(
                    child: Container(
                  height: 250,width: 400,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(colors: [Colors.black,Colors.red],
                        begin: Alignment.topCenter,
                        end: Alignment.centerRight),
                      ),
                      child: Padding(padding: EdgeInsets.only(left: 270,top: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                             Icon(Icons.food_bank,size: 25,),
                              Text("CSB Bank",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold,color: Colors.white),),
                            ],
                          )
                        ],
                      ),),
                ),
                ),
              ),
    Positioned(left: 95,top: 225,
      child: Image(image: AssetImage("assets/images/chip.jpeg"),height: 50,width: 50,),

    ),
    Positioned(left: 80,top: 275,
        child: Text("6522  3200  2345  9875",style: GoogleFonts.aBeeZee,TextStyle(fontSize:20,color: Colors.white),)),
              Positioned(left: 160,bottom: 235,
                  child: Row(
                children: [
                  Column(
                    children: [
                      Text("VALID",style: TextStyle(color: Colors.white38,fontSize: 10),),
                      Text("DATE",style: TextStyle(color: Colors.white38,fontSize: 10),),
                    ],
                  )
                ],
              )),
              Positioned(bottom: 233,left: 195,
                  child: Text("08/23",style: TextStyle(fontSize:20,color: Colors.white),)),
              Positioned(bottom: 190,left: 80,
                  child: Text("VINAYAK HEDGE",style: TextStyle(color: Colors.white),)),
              Positioned(bottom: 190,right: 80,
                  child: Text("RuPay",style: TextStyle(fontStyle: FontStyle.italic,fontSize:25,fontWeight:FontWeight.bold,color: Colors.white),)),
              Positioned(bottom: 180,right: 80,
                  child: Text("PLATINUM",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontSize: 10),))
  ],
),
    );
  }
}
