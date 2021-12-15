// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tablehub/widget.dart';
import 'package:tablehub/authentication/authenticate.dart';


// ignore: must_be_immutable
class password extends StatefulWidget {
  password({Key? key}) : super(key: key);
  TextEditingController controllerMail = TextEditingController();
  @override
  _passwordState createState() => _passwordState();
}
TextEditingController controllermail=TextEditingController();

class _passwordState extends State<password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Container(
            height: 220,
            decoration: BoxDecoration(
               
                gradient: const LinearGradient(
                    colors: [(Color(0xFFFFFFF)), Color(0xFFFFFFF)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight)),
            child: Container(
              margin: EdgeInsets.only(right: 30, top: 30, bottom: 30),
              alignment: Alignment.bottomRight,
              child: Text(
                "RESET PASSWORD",
                 style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                          color: Colors.blue[800]
                      ),
          
              ),
            )),
        SizedBox(
          height: 80,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: TextFormField(
            controller: controllermail,
            decoration: InputDecoration(labelText: "Enter your e-mail"),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        SizedBox(height: 30),
        GestureDetector(
          onTap: () async {
            if (controllermail.text == "") {
              showdialogue("Error", "fill all the fields", context);
            } else {
              Map<String, String?> flag =
                  await sendpassreset(controllermail.text);
              if (flag['status'] != 'success') {
                showdialogue("Error", flag['status']!, context);
              } else {
                showdialogue("Success", "success", context);
                controllermail.clear();
              }
            }
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            height: 54,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue[800],
              
            ),
            child: Text(
              "SUBMITT",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ]),
    ));
  }
}

void alert(String s, String t, BuildContext context) {}