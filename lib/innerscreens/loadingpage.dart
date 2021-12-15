import 'package:flutter/material.dart';
class Loadingpage extends StatelessWidget {
  const Loadingpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: CircularProgressIndicator(value: 2,color: Colors.red,),),
    );
  }
}