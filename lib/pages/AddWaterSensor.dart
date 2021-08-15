import 'package:flutter/material.dart';

class AddWaterSensor extends StatefulWidget {
  const AddWaterSensor({Key? key}) : super(key: key);

  @override
  _AddWaterSensorState createState() => _AddWaterSensorState();
}

class _AddWaterSensorState extends State<AddWaterSensor> {

  List<TextEditingController> controllers = [TextEditingController(),TextEditingController()];

  int _selectedItemIndex = 4;

  @override
  void dispose(){
    controllers[0].dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Water Sensor"),
      ),
      body: SafeArea(
        child:Column(
          children: [
            buildSensorField("Sensor ID: ", controllers[0]),
            buildSensorField("Custom Name: ", controllers[1]),

          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(){

          }
          Navigator.popAndPushNamed(context, '/waterSensorManager',arguments:{
            'id': controllers[0].text.toString(),
            'name': controllers[1].text.toString(),
          });
        },
          child: Icon(Icons.add)
      ),

    );
  }

  Widget buildSensorField (String content, TextEditingController field){
    return Container(
      margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(content),
            TextField(
              controller: field,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index, String route){
    return GestureDetector(
      onTap: (){
        setState((){
          _selectedItemIndex = index;
        });
        if(route=='/home') Navigator.pop(context);
        else Navigator.pushNamed(context, route);
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
