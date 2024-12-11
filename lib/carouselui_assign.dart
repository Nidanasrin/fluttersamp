import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: carouselassign(),));
}
class carouselassign extends StatelessWidget {
  const carouselassign({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              expandedHeight: 120,
              backgroundColor: Colors.green,
              title: Text("FARMERS FRESH ZONE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined,color: Colors.white,)),
                Text("Kochi",style: TextStyle(color: Colors.white),),
              ],
              bottom: AppBar(
                backgroundColor: Colors.green,
                title: Container(
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for vegetables and fruits",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(onPressed: (){},
                      child: Text("VEGETABLES",style: TextStyle(color: Colors.green),
                      ),style: OutlinedButton.styleFrom(side:BorderSide(color: Colors.green)),),
                    OutlinedButton(onPressed: (){},
                        child: Text("FRUITS",style: TextStyle(color: Colors.green),),
                      style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.green)),
                    ),
                    OutlinedButton(onPressed: (){},
                        child: Text("EXOTIC CUTS",style: TextStyle(color: Colors.green),),
                    style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.green)),),
                  ],
                ),
              ),


            ),
            SliverToBoxAdapter(
                child:
                Container(
                  child: CarouselSlider(
                      items: [
                        Image(image: AssetImage("assets/images/swizz2.jpg")),
                        Image(image: AssetImage("assets/images/swizz1.jpg")),
                        Image(image: AssetImage("assets/images/swizz3.jpg")),
                        Image(image: AssetImage("assets/images/swizz4.jpg")),
                      ],
                      options: CarouselOptions(
                        height: 350,
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
            ),
     /*SliverToBoxAdapter(
        child: Container(
          height: 10,
          width: 100,
          child: Padding(
            padding: const EdgeInsets.only(top: 19),
            child: Column(
              children: [
                Icon(
                  Icons.timer,
                ),
                Text("30 mins policy")
              ],
            ),

          ),
        ),
        ),*/

        Container(
          child: BottomNavigationBar(
            selectedItemColor: Colors.green,
              unselectedItemColor: Colors.green,
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
    BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
    ]),
        )
    ])
            );
  }
}
