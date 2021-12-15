import 'package:flutter/material.dart';
import 'package:tablehub/authentication/authenticate.dart';
import 'package:tablehub/authentication/login_screen.dart';
import 'package:tablehub/innerscreens/loadingpage.dart';
import 'package:tablehub/innerscreens/somethingwentwrong.dart';
import 'package:tablehub/screen/bottombar.dart';

class Signinout extends StatefulWidget {
  const Signinout({Key? key}) : super(key: key);

  @override
  _SigninoutState createState() => _SigninoutState();
}

class _SigninoutState extends State<Signinout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: changesign,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Somethingwentwrong();
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Loadingpage();
            } else if (snapshot.hasData) {
              return Bottombar();
            } else {
              return LoginScreen();
            }
          }),
    );
  }
}
