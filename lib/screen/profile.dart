import 'package:flutter/material.dart';
import 'package:tablehub/authentication/authenticate.dart';
class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: const [(Color(0xFFFFFFF)), Color(0xFFFFFFF)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(height: 80),
              
              Column(children: [
                Text('PROFILE',style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                      ),),
                profileitem("Name", "Hemandh P M"),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    "  email:hemandh.hemandh@gmail.com  ",
                    style: TextStyle(fontSize: 20),
                  )),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                ),
                profileitem("phone", "9446521711"),
                profileitem("", "user"),
                 
                ElevatedButton(onPressed: (){
                  opendialoguebox(context);
                }, child: Text("Edit profile")),
ElevatedButton(onPressed: (){signout();}, child: Text("Signout")),
              ])
            ]),
          ),
        ));
    
  }
}

 void opendialoguebox (BuildContext context) async{
  return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 350,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Edit Profile",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),
                       Text(""),
                    TextField(
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
                    TextField(
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
                   TextField(
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
                    SizedBox(
                      width: 320.0,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.black),
                        ),
                        
                      ),
                    ), SizedBox(
                      width: 320.0,
                      child: TextButton(
                        onPressed: () { Navigator.of(context).pop();},
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: Colors.black),
                        ),
                        
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
}




Widget profileitem(String  field, String value) {
  return Container(
    height: 50,
    width: double.infinity,
    margin: EdgeInsets.all(10),
    child: Center(
        child: Text(
      field + "  :  " + value,
      style: TextStyle(fontSize: 20),
    )),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
  );
}