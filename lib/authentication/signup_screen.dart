import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tablehub/authentication/authenticate.dart';
import 'package:tablehub/colorsandwidgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}
TextEditingController controllername =TextEditingController();
  TextEditingController controlleremail =TextEditingController();
  TextEditingController controllerphone =TextEditingController();
  TextEditingController controllerpass =TextEditingController();
  TextEditingController controllerpass1 =TextEditingController();
class InitState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  
     return Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: Image.asset(
                        "images/logo.jpeg",
                        height: 200,
                        width: 200,
                      ),
                    )
                ),
                

                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.white
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: controllername,
                    cursorColor: Color(0xFF1565C0),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: Color(0xFF1565C0),
                      ),
                      hintText: "Full Name",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.white
                      ),
                    ],
                  ),
                  child:  TextField(
                    controller: controlleremail,
                    cursorColor: Color(0xFF1565C0),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: Color(0xFF1565C0),
                      ),
                      hintText: "Email",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xFFFFFFF),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Colors.white
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: controllerphone,
                    cursorColor: Color(0xFF1565C0),
                    decoration: InputDecoration(
                      focusColor: Color(0xffF5591F),
                      icon: Icon(
                        Icons.phone,
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: Color(0xFF1565C0),
                      ),
                      hintText: "Phone Number",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xFFFFFFF),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Colors.white
                      ),
                    ],
                  ),
                  child:  TextField(
                    controller: controllerpass,
                    obscureText: true,
                    cursorColor: Color(0xFF1565C0),
                    decoration: InputDecoration(
                      focusColor: Color(0xffF5591F),
                      icon: Icon(
                        Icons.vpn_key,
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: Color(0xFF1565C0),
                      ),
                      hintText: "Enter Password",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                 Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xFFFFFFF),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Colors.white
                      ),
                    ],
                  ),
                  child:  TextField(
                    controller: controllerpass1,
                    obscureText: true,
                    cursorColor: Color(0xFF1565C0),
                    decoration: InputDecoration(
                      focusColor: Color(0xffF5591F),
                      icon: Icon(
                        Icons.vpn_key,
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: Color(0xFF1565C0),
                      ),
                      hintText: "confirm password",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: ()async {
                   if (controllerpass1.text==controllerpass.text) {
                     if ( controllerphone.text == ""||controllername.text==""||controlleremail.text==""||controllerpass.text==""||controllerpass1.text=="") {
                       showDialog(context: context, builder: (BuildContext context){return alert("Error", "Fields cannot be empty", context);});
                     } else {
                       Map<String,String> flag =await register(controlleremail.text, controllerpass.text, controllername.text, controllerphone.text);
                       if (flag['status']!="success") {
                         showDialog(context: context, builder: (BuildContext context){return alert("Error", flag['status']!, context);});
                         
                       } 
                       Navigator.pop(context);
                     }
                     
                     
                   } else {
                     showDialog(context: context, builder: (BuildContext context){return alert("Error", "Password did'nt match", context);});
                   }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blue[800],
                      
                      boxShadow: [
                        const BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Colors.white
                        ),
                      ],
                    ),
                    child: const Text(
                      "REGISTER",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Have Already Member?  ",
                      style: TextStyle(
                          color: Colors
                          .blue
                      )
                      ),
                      GestureDetector(
                        // ignore: prefer_const_constructors
                        child: Text(
                          "Login Now",
                          style: const TextStyle(
                              // ignore: use_full_hex_values_for_flutter_colors
                              color: Color(0xFF1565C0)
                          ),
                        ),
                        onTap: () {
                          // Write Tap Code Here.
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}