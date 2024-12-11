import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nidflutter/Sharedpreferences2/homepage.dart';
import 'package:nidflutter/Sharedpreferences2/registration.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: LoginwithValids(),));
}
class LoginwithValids extends StatefulWidget {
  const LoginwithValids({super.key});

  @override
  State<LoginwithValids> createState() => _LoginwithValidsState();
}

class _LoginwithValidsState extends State<LoginwithValids> {
  @override

  void initState(){
    checkuser();
    getuser();
    super.initState();
  }
  late SharedPreferences data;
  late bool newuser;
  late String regname;
  late String reguname;
  late String repasswrd;

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  GlobalKey<FormState>form = GlobalKey();
  bool showpass = true;

  void getuser() async{
    data = await SharedPreferences.getInstance();
    regname = data.getString("name")!;
    reguname = data.getString("username")!;
    repasswrd = data.getString("password")!;
  }

  void checkuser() async {
    data = await SharedPreferences.getInstance();
    newuser = (data.getBool("newuser") ?? true);
    if (newuser == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60, top: 30),
            child: TextFormField(
              controller: usernamecontroller,
              decoration: InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
              ),
              validator: (username) {
                if (username!.isEmpty || !username.contains("@") ||
                    !username.contains(".com")) {
                  return "Enter valid username";
                }
              },
            ),
          ),
          Padding(padding: const EdgeInsets.only(left: 60, right: 60, top: 30),
            child: TextFormField(
              controller: passwordcontroller,
              obscureText: showpass,
              obscuringCharacter: "*",
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
                if (password!.isEmpty || password.length<6) {
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
              if (username != '' && password != '' || username==reguname || password==repasswrd) {
                print("Login Successfully");
                data.setString("username", username);
                data.setString("name", regname);
                data.setBool("newuser", false);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              }
            }, child: Text("Login")),
          ),
          SizedBox(height: 30,),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Registrationpages()));
          }, child: Text("Not a user?Create an account."))
        ],
      ),
    );
  }
}