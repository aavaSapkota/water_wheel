import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();


}

class _HomeState extends State<Home> {
  DatabaseReference testRef = FirebaseDatabase.instance.reference().child("test");

  // testRef.push().set("sd").toJson();

  _HomeState(){}

  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SafeArea(
          child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(30,10,30,0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Welcome",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          letterSpacing: 2.0,
                                          fontFamily: "MainTitleFont"
                                      ),
                                    ),
                                    Text(
                                      "Andrea",
                                      style: TextStyle(
                                        color: Colors.blue[900],
                                        fontSize: 30.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/AndreaPfp.jpeg"),
                                  radius: 50.0,
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: SvgPicture.asset("assets/waterdrop.svg"),
                                      height: 50,
                                      width: 50,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:[
                                        Text(
                                          "1989",
                                          style: TextStyle(
                                            fontSize: 80.0,
                                            fontFamily: "MainTitleFont",
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "liters",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: "MainTitleFont",
                                            color: Colors.blue[700],
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: SimpleShadow(
                                    opacity: 0.6,
                                    color: Colors.grey,
                                    offset: Offset(-5,5),
                                    sigma: 7,
                                    child: Container(
                                      margin: EdgeInsets.all(10.0),
                                      padding: EdgeInsets.all(20.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              child: Text(
                                                "Water Sensors Installed",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                ),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                            Align(
                                              child: Text(
                                                '7',
                                                style: TextStyle(
                                                  fontSize: 50,
                                                ),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: SimpleShadow(
                                    opacity: 0.6,
                                    color: Colors.grey,
                                    offset: Offset(-5,5),
                                    sigma: 7,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        color: Colors.white,
                                      ),
                                      margin: EdgeInsets.all(25.0),
                                      padding: EdgeInsets.all(20.0),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                                child: Icon(Icons.check, color: Colors.blue, size:55.0,)
                                            ),
                                            Align(
                                              child: Text(
                                                "No Errors Detected",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                ),
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ]
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset("assets/WaterGraph.svg"),

                          ],
                        ),
                      ),
                    ),
                  ]
              )

          ),
        ),
        bottomNavigationBar: Row(
          children: [
            buildNavBarItem(Icons.home,0, '/home'),
            buildNavBarItem(Icons.view_list,1, '/waterSensorManager'),
            buildNavBarItem(Icons.settings,2, '/userProfile'),
          ],
        ),

      );
  }

  void _onItemTapped(int index) {

  }

  Widget buildNavBarItem(IconData icon, int index, String route){
    return GestureDetector(
      onTap: (){
        setState((){
          _selectedItemIndex = index;
        });
        Navigator.pushNamed(context, route);
      }
      ,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width/3,
        decoration: BoxDecoration(
            color: index == _selectedItemIndex ? Colors.lightBlueAccent: Colors.transparent,
            gradient: LinearGradient(colors: [
              Colors.blue.withOpacity(0.3),
              Colors.blue.withOpacity(0.015),
            ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )
        ),
        child: Icon(icon, color: index == _selectedItemIndex ? Colors.blue[900]: Colors.blue,),
      ),
    );
  }
}




