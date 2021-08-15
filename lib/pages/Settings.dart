import 'package:flutter/material.dart';


class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  int _selectedItemIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
          child: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20,50,20,10),
              child: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.blue[800],
                  fontFamily: "MainTitleFont",
                  fontSize: 30,
                ),
              ),
            ),

            Column(
              children: [
                buildSettingItem("User Profile"),
                buildSettingItem("Permissions"),
                buildSettingItem("Water Sensors"),
                buildSettingItem("Leak Report"),
              ],
            ),
          ]
         )
        )
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

  Widget buildSettingItem (String setting){
    return Container(
      margin: EdgeInsets.fromLTRB(30,10,30,0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(setting)
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Icon(Icons.arrow_right),
              ),
            ),
          ]
      ),
    );
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


