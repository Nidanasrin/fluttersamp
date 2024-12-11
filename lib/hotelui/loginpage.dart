import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nidflutter/hotelui/registrationpage.dart';
import 'homepage.dart';

void main() {
  runApp(MaterialApp(
    home: Loginpage(),));
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool shopass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Container(
        color: Colors.lightBlueAccent[100],
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Image(
                    height: 200,
                    width: 200,
                    image: AssetImage("Assets/images/hotelicon.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Text(
                    "GRAND HYATT",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60, top: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Username",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (username) {
                      if (username!.isEmpty ||
                          !username.contains("@") ||
                          !username.contains(".com")) {
                        return "Enter valid email";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 60,
                    right: 60,
                    top: 20,
                    bottom: 15,
                  ),
                  child: TextFormField(
                    obscureText: shopass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            shopass = !shopass;
                          });
                        },
                        icon: Icon(
                          shopass ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[200],
                    foregroundColor: Colors.pinkAccent[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ),
                      );
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Registrationpage(),
                      ),
                    );
                  },
                  child: Text(
                    "Not a User? Create an account",
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}