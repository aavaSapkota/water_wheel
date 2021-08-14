
import 'package:flutter/material.dart';
import 'package:water_wheel/dataClasses/WaterSensor.dart';

class WaterSensorManger extends StatefulWidget {
  const WaterSensorManger({Key? key}) : super(key: key);

  @override
  _WaterSensorMangerState createState() => _WaterSensorMangerState();
}

class _WaterSensorMangerState extends State<WaterSensorManger> {

  List<WaterSensor> sensors = [
    WaterSensor(0), WaterSensor(1)
  ];
  int _selectedItemIndex = 1;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            children: [
              Text(
                'Water Flow Sensors',
                style: TextStyle(
                  color: Colors.blue[900]
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.home,0, '/home'),
          buildNavBarItem(Icons.view_list,1, '/waterSensorManager'),
          buildNavBarItem(Icons.perm_identity,2, '/userProfile'),
        ],
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

