
import 'package:flutter/material.dart';
import 'package:water_wheel/dataClasses/WaterSensor.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WaterSensorManger extends StatefulWidget {
  const WaterSensorManger({Key? key}) : super(key: key);

  @override
  _WaterSensorMangerState createState() => _WaterSensorMangerState();
}

class _WaterSensorMangerState extends State<WaterSensorManger> {


   List<WaterSensor> sensors = [
    WaterSensor("1","sink",204), WaterSensor("2", "hose",382)
  ];

  int _selectedItemIndex = 1;
  Map data = {};

  int sensorsLength(){
    return sensors.length;
  }

  @override
  Widget build(BuildContext context) {
    DatabaseReference testRef = FirebaseDatabase.instance.reference().child("test");
    // testRef
    data={'data':ModalRoute.of(context)!.settings.arguments};
    print(data);
    setState(() {
      if(data['data']!=null)sensors.add(WaterSensor(data['data']['id'],data['data']['name'],0));
    });


    return Scaffold(
      body:SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20,50,20,10),

                child: Text(
                  'Water Flow Sensors',
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontFamily: "MainTitleFont",
                    fontSize: 30,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(30,10,30,0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),

                    child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: Text("ID")
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                                padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                                child: Text(
                                  "Name"
                                )
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Text("Liters ", textAlign:TextAlign.center),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Text(" "),
                            ),
                          ),
                        ]
                    ),
                  )
                ]
              ),
              Column(
                children: sensors.map((sensor){
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
                              flex: 1,
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(sensor.getId().toString())
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Text(
                                    sensor.getName(),
                                  )
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: Text(sensor.getWaterused().toString())
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: Icon(Icons.edit),
                              ),
                            ),
                          ]
                      ),
                  );
                }).toList(),
              )
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, '/addSensor');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.home,0, '/home'),
          buildNavBarItem(Icons.view_list,1, '/waterSensorManager'),
          buildNavBarItem(Icons.settings,2, '/settings'),
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
        Navigator.popAndPushNamed(context, '/home',arguments:{
          'length': sensors.length,
        });
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

