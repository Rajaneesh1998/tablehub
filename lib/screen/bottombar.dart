import 'package:flutter/material.dart';
import 'package:tablehub/screen/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:tablehub/screen/profile.dart';
class Bottombar extends StatefulWidget {
  const Bottombar({ Key? key }) : super(key: key);

  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int Selectedindex =0;
  @override
  Widget build(BuildContext context) {
    void changepage(int index){
      setState(() {
        Selectedindex =index;
      });
    }
    List<Widget> pages =[
      HomePage(),
      Profile()
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[Selectedindex],
      bottomNavigationBar: CurvedNavigationBar(items: [
        Icon(Icons.home),
        Icon(Icons.person)
      ],
      onTap: (index){
        changepage(index);
      },
      height: 50,
      backgroundColor: Colors.white,
      color: Color(0xFF1565C0),
      ),
    );
  }
}