import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nidflutter/Sharedpreference/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: Homepage2(),));
}
class Homepage2 extends StatefulWidget {
  const Homepage2({super.key});

  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  @override
  void initState() {
    ftechdata();
    super.initState();
  }

  late SharedPreferences data;
   String? name;
   String? username;
   String _gender='';


  void ftechdata() async {
    data = await SharedPreferences.getInstance();
    setState(() {
      name= data.getString("name")!;
      username = data.getString("username")!;
    int gender = data.getInt("gender")?? 0;
    _gender = genderValue(gender==1) ? "Male" : (gender==2) ? "Female" : "Not Specified";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Hi Welcome $name"),
          Text("gender : ge"),
          ElevatedButton(onPressed: () {
            data.setBool("newuser", true);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Register()));
          }, child: Text("Logout")),
        ],
      ),
    );
  }
}
