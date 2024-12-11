import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nidflutter/Sharedpreference/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: Homepage(),));
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    ftechdata();
    super.initState();
  }

  late SharedPreferences data;
  late String username;

  void ftechdata() async {
    data = await SharedPreferences.getInstance();
    setState(() {
      username = data.getString("username")!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Username"),
          ElevatedButton(onPressed: () {
            data.setBool("newuser", true);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginWithValid()));
          }, child: Text("Logout")),
        ],
      ),
    );
  }
}
