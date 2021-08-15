import 'package:flutter/cupertino.dart';
import 'package:water_wheel/dataClasses/WaterSensor.dart';

import 'WaterSensor.dart';


class User {
  int totalWaterUsed = 0;
  int id =0;
  String name ="";
  List<WaterSensor> sensors = [];
  AssetImage pfp = new AssetImage(" ");

  User(int id, String name){
    this.id = id;
    this.name = name;
  }

  int getWaterUsed (){
    return totalWaterUsed;
  }

  int getId (){
    return id;
  }

  String getName(){
    return name;
  }

  List<WaterSensor> getWaterSensors (){
    return sensors;
  }

  void addWaterSensor(WaterSensor sensor){
    sensors.add(sensor);
  }

  void setPfp(AssetImage image){
    pfp = image;
  }

}