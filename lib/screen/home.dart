import 'package:flutter/material.dart';
import 'package:tablehub/screen/detail.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      
      
     body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 25.0, top: 45.0, right: 25.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      "TABLE HUB",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 40.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      buildTopChip("Find a Restaurent", true),

                    ],
                    
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
             buildItem(
                  "Sky Grill Lounge",
                  "Crowne Plaza Kochi",
                  "(Open 8 AM - Close 11 PM)",
                  "TIMINGS: Break fast:9-10",
                  "                 : Lunch:12-2",
                  "                 : Dinner:9-10",
                  "https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/04/sky-gril.jpg",
                  
                  4.5,
                  ),
              buildItem(
                  "Fort House",
                  "2/6A, Calvathy Road, Fort Kochi",
                  "(Open 7 AM - Close 10 PM)",
                  "TIMINGS: Breakfast:9-10",
                   "                 : Lunch:12-2",
                  "                 : Dinner:9-10",
                  "https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/04/fort-house-restaurant.jpg",
                 
                  4.5,
                  ),
              buildItem(
                  "Asian Kitchen",
                  " Cochin Club,Fortkochi",
                  "(Open 7 AM - Close 10 PM)",
                   "TIMINGS: Break fast:9-10",
                    "                 : Lunch:12-2",
                  "                 : Dinner:9-10",
                  "https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/04/asia-kitchen.jpg",
                 
                  4.7,
                  ),
             buildItem(
                  " Kashi Art Cafet",
                  " Burgher Street, Fort Kochi",
                  "(Open 7 AM - Close 10 PM)",
                  "TIMINGS: Break fast:9-10",
                   "                 : Lunch:12-2",
                  "                 : Dinner:9-10",
                  "https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/04/kashi-art-cafe.jpg",
                 
                  5,
                  ),
            buildItem(
                  "The Rice Boat",
                  " Taj–Malabar, Willingdon Island",
                  "(Open 7 AM - Close 10 PM)",
                  "TIMINGS: Break fast:9-10",
                   "                 : Lunch:12-2",
                  "                 : Dinner:9-10",
                  "https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/04/the-rice-boat.jpg",
                   
                  4.5,
                 ),
            ],
          )),
        ],
      ),
    );
  }

  GestureDetector buildItem(
      String title, String subTitle, String timeing, String brfst, String lnch, String dnr, String url, double rating) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => DetailPage(url)));
      },
          child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: <Widget>[
            Hero(
              tag: url,
                          child: Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(url),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                    
                      topLeft: Radius.circular(20.0),  
                      topRight: Radius.circular(20.0),
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10,left: 20,bottom: 5,right: 10),
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                        blurRadius: 2.0, spreadRadius: 1.0, color: Colors.grey)
                  ]),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0),
                      ),
                      Text(
                        subTitle,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                      Text(
                        timeing,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                      Text(
                        brfst,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                      Text(
                        lnch,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                      Text(
                        dnr,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),],),
                      CircleAvatar(               
 backgroundColor: Colors.blue[800],
 radius: 23.0,
                      child:CircleAvatar(
                    backgroundColor: Colors.white,
                  
                    child: Text(
                      rating.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF1565C0 )),
                    ),
                  ),),
                  CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Icon(
                            Icons.location_on_outlined,
                            color: Colors.blue[800],
                          ),
                          onPressed: () {},
                        )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildTopChip(String label, bool isActive) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Chip(
        padding: const EdgeInsets.all(8.0),
        label: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        backgroundColor: isActive ? Colors.blue[800] : Colors.grey,
      ),
    );
  }
}