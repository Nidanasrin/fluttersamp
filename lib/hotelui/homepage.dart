import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Homepage()));
}

class Homepage extends StatelessWidget {
  var img=["assets/images/rooms.jpg","Assets/images/room.jpg"];
  var rate=["\$40","\$40"];
  var data=["Awesome room near Boddha","Seaview room"];
  var name=["Boddha,kathaamndu","Rajghat,Delhi"];
  var review=["(220 Reviews)","(200 Reviews)"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              expandedHeight: 175,
              backgroundColor: Colors.blue[100],
              flexibleSpace:  Center(
                child: Text(
                  "Type Your Location",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              leading: Icon(Icons.menu),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Icon(Icons.favorite),
                )
              ],
              bottom: AppBar(
                backgroundColor: Colors.blue[100],
                title: Container(
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "search something",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt)),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 19),
                        child: Column(
                          children: [
                            Icon(
                              Icons.hotel,
                            ),
                            Text("hotel")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 19),
                        child: Column(
                          children: [Icon(Icons.restaurant), Text("Restaurant")],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      color: Colors.orange,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: Column(
                          children: [
                            Icon(Icons.local_cafe),
                            Text("Cafe"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 50,),),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                  height: 300,
                  child: Stack(
                    children: [
                      Card(
                        child: Container(height: 300,
                          child: Padding(padding: const EdgeInsets.only(bottom: 90),
                            child: Image(image: AssetImage(img[index]),
                              fit: BoxFit.fill,width: 500,height: 200,),
                          ),
                        ),
                      ),
                      Positioned(
                          child: Container(
                            child: Card(
                              child: Center(
                                  child: Text(rate[index])),
                            ),
                          ),top: 150,right: 25,height: 40,width: 40),
                      Positioned(top: 210,left: 25,
                          child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [Text(data[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  Center(child: Text(name[index],style: TextStyle(fontSize: 15),)),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.green,),
                                      Icon(Icons.star,color: Colors.green,),
                                      Icon(Icons.star,color: Colors.green,),
                                      Icon(Icons.star_half,color: Colors.green,),
                                      Text(review[index]),
                                    ],
                                  ),
                                ],

                              )
                          )

                      )],
                  )
              );
            },childCount: img.length,
            )
            )
          ],
        )
    );
  }
}