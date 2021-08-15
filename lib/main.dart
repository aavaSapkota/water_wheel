import 'package:flutter/material.dart';
import 'package:water_wheel/pages/AddWaterSensor.dart';
import 'package:water_wheel/pages/Home.dart';
import 'package:water_wheel/pages/Leak%20Report.dart';
import 'package:water_wheel/pages/Sign%20In.dart';
import 'package:water_wheel/pages/WaterSensorManager.dart';
import 'package:water_wheel/pages/Settings.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      initialRoute: '/signIn',
      routes: {
        '/signIn': (context) => SignIn(),
        '/home': (context) => Home(),
        '/waterSensorManager': (context) => WaterSensorManger(),
        '/settings': (context)=> Settings(),
        '/addSensor': (context) => AddWaterSensor(),
        '/leakReport': (context) => LeakReport(),
      }
  ));
}


