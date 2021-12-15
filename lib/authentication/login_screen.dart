
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tablehub/authentication/authenticate.dart';
import 'package:tablehub/authentication/forgotpassword.dart';
import 'package:tablehub/authentication/signup_screen.dart';
import 'package:tablehub/widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controllermail =TextEditingController();
    TextEditingController controllerpass =TextEditingController();
 SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Image.asset(
                "images/logo.jpeg",
                height: 200,
                width: 200,
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
              // ignore: prefer_const_constructors
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white70,
              
              ),
              child:  TextField(
                cursorColor: Colors.blue[800],
               controller: controllermail,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    // ignore: use_full_hex_values_for_flutter_colors
                    color: Colors.blue[800],
                  ),
                  hintText: "Enter Email",
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
              ),
              child: TextField(
                cursorColor: Colors.blue[800],
                controller: controllerpass,
                obscureText: true,
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  icon: Icon(
                    Icons.vpn_key,
                    // ignore: use_full_hex_values_for_flutter_colors
                    color: Colors.blue[800],
                  ),
                  hintText: "Enter Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> password()));
                },
                child: const Text("Forget Password?",
                style: TextStyle(
                      // ignore: use_full_hex_values_for_flutter_colors
                      color: Color(0xFF1565C0)
                  ),
                  ),
              ),
            ),

            GestureDetector(
              onTap: () async{
                Map<String,String>flag = await signinemail(controllermail.text, controllerpass.text);
                if (flag['status']!="success") {
                   showdialogue("erroe", flag['status']!, context);
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
                ),
                // ignore: prefer_const_constructors
                child: Text(
                  "LOGIN",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't Have Any Account?  ",
                  style: TextStyle(
                      color: Colors.blue
                  ),
                  ),
                  GestureDetector(
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Register Now",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          // ignore: use_full_hex_values_for_flutter_colors
                          color: const Color(0xFF1565C0)
                      ),
                    ),
                    onTap: () {
                      // Write Tap Code Here.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        )
                      );
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