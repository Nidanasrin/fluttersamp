import 'package:flutter/material.dart';
import 'package:nidflutter/Sharedpreference/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Sharedpreferences2/homepage.dart';

void main(){
  runApp(MaterialApp(home: Register(),));
}
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late SharedPreferences data;
  late bool newuser;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();
  TextEditingController coursecontroller = TextEditingController();

  GlobalKey<FormState> form = GlobalKey();
  bool showpass = true;
int selectedValue=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration page"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
          child: TextFormField(
            controller: namecontroller,
            decoration: InputDecoration(
              hintText: "Name",
              labelText: "Name",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            validator: (name) {
              if (name!.isEmpty) {
                return "Enter valid name";
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
          child: TextFormField(
            controller: usernamecontroller,
            decoration: InputDecoration(
                labelText: "Username",
                hintText: "Username",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8))),
            validator: (username) {
              if (username!.isEmpty ||
                  !username.contains("@") ||
                  !username.contains(".com")) {
                return "Enter Valid Email";
              }
            },
          ),
        ),
    Padding(
    padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
    child: TextFormField(
    controller: agecontroller,
      decoration: InputDecoration(
       labelText: "Age",
        hintText: "Age",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
      ),
    ),
    ),
    ),
    Padding(padding: EdgeInsets.only(left: 40, right: 40, top: 10),
    child: Row(
    children: [Text("Gender : "),
      Container(
      child: Row(
      children: [
        Text("Male"),
        Radio(
        value: 0,
        groupValue: selectedValue,
        onChanged: (value){
          setState(() {
            selectedValue=value!;
          });
        }),
        Text("Female"),
        Radio(
            value: 1,
            groupValue:selectedValue,
            onChanged: (value){
              setState(() {
                selectedValue=value!;
              });
        })
    ]
    ),
    )],
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
    child:TextFormField(
controller: coursecontroller,
    decoration: InputDecoration(
    labelText: "Course",
    hintText: "Course",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8))),
    validator: (course) {
    if (course!.isEmpty){
    return "Enter valid input";
    }}
    ),
    ),
    Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
          child: TextFormField(
            controller: passwordcontroller,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              labelText: "Password",
              hintText: "Password",
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      if (showpass) {
                        showpass = false;
                      } else {
                        showpass = true;
                      }
                    });
                  },
                  icon: Icon(showpass == true
                      ? Icons.visibility_off
                      : Icons.visibility)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            validator: (password) {
              if (password!.isEmpty || password.length < 6) {
                return "Enter valid Password";
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () => Homepage(), child: Text("Register")),
        ),
      ]),
    );
  }
  void Register() async {
    data = await SharedPreferences.getInstance();
    var name = namecontroller.text;
    var username = usernamecontroller.text;
    var age=agecontroller.text;
    var gender= gendercontroller.text;
    var course=coursecontroller.text;
    var password = passwordcontroller.text;
    if (name != '' && username != '' && password != '' && age !='' && gender!='' && course!='') {
      print("Registered Successfully");
      data.setString("name", name);
      data.setString("username", username);
      data.setString("age", age);
      data.setInt("gender", selectedValue);
      data.setString("course", course);
      data.setString("password", password);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homepage2()));
    }
  }
}
