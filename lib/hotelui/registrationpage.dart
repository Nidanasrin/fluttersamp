import 'package:flutter/material.dart';
import 'package:nidflutter/hotelui/homepage.dart';

import 'Loginpage.dart';


void main(){
  runApp(MaterialApp(home: Registrationpage(),debugShowCheckedModeBanner: false,));
}

class Registrationpage extends StatefulWidget {


  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  bool showpass=true;
  bool showconfrmpass=true;
  GlobalKey<FormState> formkey=GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.yellow[100],
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text("REGISTRATION PAGE", style:  TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60,left: 60,right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_box),
                        hintText: "Name",
                        labelText: "Name",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                    validator: (name){
                      if(name!.isEmpty){
                        return "Enter valid name";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Username",
                        labelText: "Username",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                    validator: (username){
                      if(username!.isEmpty || !username.contains("@")|| !username.contains(".com")){
                        return "Enter valid email";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: "Phone number",
                        labelText: "Phone number",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                    validator: (Phonenumber){
                      if(Phonenumber!.isEmpty){
                        return "Enter valid number";
                      }
                    },
                  ),
                ),
        
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
                  child: TextFormField(
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration:InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(onPressed:
                            (){
                          setState(() {
                            if(showpass){
                              showpass=false;
                            }
                            else{
                              showpass=true;
                            }
                          });
                        }, icon: Icon(showpass==true ?Icons.visibility_off :Icons.visibility)),
                        hintText: "Password",
                        labelText: "Password",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ) ,
                    validator: (password){
                      if(password!.isEmpty || password.length<6){
                        return "Enter valid password";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 60,right: 60,bottom: 60),
                  child: TextFormField(
                    obscureText: showconfrmpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
        
                        suffixIcon: IconButton(onPressed:
                            (){
                          setState(() {
                            if(showconfrmpass){
                              showconfrmpass=false;
                            }
                            else{
                              showconfrmpass=true;
                            }
                          });
                        }, icon: Icon(showconfrmpass==true ?Icons.visibility_off :Icons.visibility)),
                        hintText: "confirm password",
                        labelText: "confirm password",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                    validator: (cpass){
                      if(cpass!.isEmpty || cpass.length<6){
                        return "Enter valid  confirm password";
                      }
                    },
                  ),
        
                ),
        
                ElevatedButton(onPressed: (){
                  final valid= formkey.currentState!.validate();
                  if(valid){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                  }
                }, child: Text("Register")),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}