import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nidflutter/Sharedpreference/loginpage.dart';
import 'package:nidflutter/Sharedpreferences2/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: Registrationpages(),));
}

class Registrationpages extends StatefulWidget {
  const Registrationpages({super.key});

  @override
  State<Registrationpages> createState() => _RegistrationpagesState();
}

class _RegistrationpagesState extends State<Registrationpages> {
  @override
  late SharedPreferences data;
  late bool newuser;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontrolleer = TextEditingController();

  GlobalKey<FormState> form = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration page"),
      ),
      body: Column(
        children: [
      Padding(
      padding: const EdgeInsets.only(left: 60, right: 60, top: 30),child:
          TextFormField(
            controller: namecontroller,
            decoration: InputDecoration(
              hintText: "Name",
              labelText: "Name",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            validator: (name) {
              if (name!.isEmpty) {
                return "Enter valid name";
              }
            },),
      ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60, top: 30),
            child: TextFormField(
              controller: usernamecontroller,
              decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))
              ),
              validator: (username) {
                if (username!.isEmpty || !username.contains("@") ||
                    !username.contains(".com")) {
                  return "Enter Valid Email";
                }
              },
            ),
          ),
          Padding(padding: const EdgeInsets.only(left: 60, right: 60, top: 30),
            child: TextFormField(
              controller: passwordcontrolleer,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: "Password",
                hintText: "Password",
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    if(showpass){
                      showpass=false;
                    }
                    else
                    {
                      showpass=true;
                    }
                  });
                }, icon: Icon(showpass==true?Icons.visibility_off:Icons.visibility)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),),
              ),
              validator: (password) {
                if (password!.isEmpty || password.length < 6) {
                  return "Enter valid Password";
                }
              },
            ),
          ),
          ElevatedButton(
              onPressed: () => Registrationpage(), child: Text("Login")),
        ],
      ),
    );
  }

  void Registrationpage() async {
    data = await SharedPreferences.getInstance();
    var name = namecontroller.text;
    var username = usernamecontroller.text;
    var password = passwordcontrolleer.text;
    if (name != '' && username != '' && password != '') {
      print("Registered Successfully");
      data.setString("name", name);
      data.setString("username", username);
      data.setString("password", password);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginwithValids()));
    }
  }
}