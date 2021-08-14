import 'package:flutter/material.dart';
import 'package:water_wheel/pages/Home.dart';
import 'package:water_wheel/pages/WaterSensorManager.dart';
import 'package:water_wheel/pages/Loading.dart';
import 'package:water_wheel/pages/UserProfile.dart';


void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/waterSensorManager': (context) => WaterSensorManger(),
        '/userProfile': (context)=> UserProfile(),
    }
));

