import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String url;

  // ignore: use_key_in_widget_constructors
  const DetailPage(this.url);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const Chip(
          backgroundColor: Colors.blue,
          padding: EdgeInsets.fromLTRB(55, 12, 55, 12),
          label: Text("BOOK NOW",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))),
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.url,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.url),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 40.0,
            right: 15.0,
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.4),
              child: IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            left: 25.0,
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "",
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 60.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                  
                    Container(
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Text("AVAILABLE SEATS : 25",style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),)
                    ),
                   Container(
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 40),
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        cursorColor: Color(0xFF000000),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: Colors.black,
                          ),
                          hintText: "ENTER NAME",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),


                    Container(
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        cursorColor: Color(0xFF000000),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.alarm,
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: Colors.black,
                          ),
                          hintText: "ENTER THE TIME",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),


                    Container(
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                      child: const TextField(
                        cursorColor: Color(0xFF000000),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.calendar_today,
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: Colors.black,
                          ),
                          hintText: "ENTER THE DATE",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),


                    Container(
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        cursorColor: Color(0xFF000000),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: Colors.black,
                          ),
                          hintText: "ENTER NO OF PERSONS",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        cursorColor: Color(0xFF000000),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.alarm,
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: Colors.black,
                          ),
                          hintText: "EXPECTED TIME TO SPEND",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                   
Container(
                      alignment: Alignment.center,
                      margin:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      // ignore: prefer_const_constructors
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        cursorColor: Color(0xFF000000),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.food_bank,
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: Colors.black,
                          ),
                          hintText: "BREAKFAST/LUNCH/DINNER",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
