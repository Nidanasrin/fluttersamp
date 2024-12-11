import 'package:flutter/material.dart';
import 'package:nidflutter/Sharedpreferences2/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void initState(){
    ftechdata();
    super.initState();
  }

  late SharedPreferences data;
  late String username;
  late String name;

  void ftechdata()async{
    data = await SharedPreferences.getInstance();
    setState(() {
      username=data.getString("username")!;
      name=data.getString("name")!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$name"),
        backgroundColor: Colors.yellow[100],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$username"),
          ElevatedButton(onPressed: (){
            data.setBool("newuser", true);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginwithValids()));
          }, child: Text("Logout")),
        ],
      ),
    );
  }
}
