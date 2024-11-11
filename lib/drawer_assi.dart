import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Drawerex(),
    debugShowCheckedModeBanner: false,
  ));
}

class Drawerex extends StatelessWidget {
  const Drawerex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("NavigationDrawer",style: TextStyle(color: Colors.white),),
        leading: Icon(Icons.arrow_back ,color: Colors.white,),
      ),
      body: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(image: null),
                accountName: const Text(
                  "Robin Singla",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "robinsingla@gmail.com",
                  style: TextStyle(color: Colors.grey[500]),
                ),
                currentAccountPicture:  CircleAvatar(
                  backgroundImage: AssetImage("assets/images/sdfd.jpg"),
                ),
                otherAccountsPictures: [],
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("Message"),
              ),
              ListTile(
                leading: Icon(Icons.sync),
                title: Text("Sync"),
              ),
              ListTile(
                leading: Icon(Icons.restore_from_trash_rounded),
                title: Text("Trash"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              Divider(
                thickness: 3,
                color: Colors.grey[200],
              ),
              Text(
                "Profile",
                style: TextStyle(color: Colors.grey[500]),
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("Login"),
              ),
              Divider(
                thickness: 3,
                color: Colors.grey[200],
              ),
              Text(
                "communicate",
                style: TextStyle(color: Colors.grey[500]),
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
              ),
              ListTile(
                leading: Icon(Icons.rate_review),
                title: Text("Rate us"),
              )
            ],
          ),
        ),
        body: Center(
            child: Text(
              "welcome",
            )),
      ),
    );
  }
}