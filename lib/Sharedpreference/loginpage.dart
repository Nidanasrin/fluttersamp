import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nidflutter/Sharedpreference/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: LoginWithValid(),));
}
class LoginWithValid extends StatefulWidget {
  const LoginWithValid({super.key});

  @override
  State<LoginWithValid> createState() => _LoginWithValidState();
}

class _LoginWithValidState extends State<LoginWithValid> {


  @override
  void initState() {
    checkuser();
    super.initState();
  }

  late SharedPreferences data;
  late bool newuser;
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey();
  bool shopass = true;

  void checkuser() async {
    data = await SharedPreferences.getInstance();
    newuser = (data.getBool("newuser") ?? true);
    if (newuser == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homepage2()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Container(
        color: Colors.pinkAccent.shade100,
        child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.only(top: 20),
                  child: Text("Login", style: TextStyle(color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),
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
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: () {
                    var username = usernamecontroller.text;
                    var password = passwordcontroller.text;
                    if (username != '' && password != '') {
                      print("Login Successfully");
                      data.setString("username", username);
                      data.setBool("newuser", false);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepage2()));
                    }
                  }, child: Text("Login")),
                ),

              ],
            )),
      ),
    );
  }
}