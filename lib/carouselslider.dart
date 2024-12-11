import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Carousalslidereg(),));
}

class Carousalslidereg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlider(
            items: [
              Image(image: AssetImage("assets/images/princess.jpeg")),
              Image(image: AssetImage("assets/images/johnwick.png")),
              Image(image: AssetImage("assets/images/grand.jpg")),
              Image(image: AssetImage("assets/images/sdfd.jpg")),
            ], options: CarouselOptions(
          height: 400,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        )),
      ),
    );
  }

}