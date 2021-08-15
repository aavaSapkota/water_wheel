import 'package:flutter/material.dart';
import 'package:water_wheel/pages/AddWaterSensor.dart';
import 'package:water_wheel/pages/Home.dart';
import 'package:water_wheel/pages/Sign%20In.dart';
import 'package:water_wheel/pages/WaterSensorManager.dart';
import 'package:water_wheel/pages/Loading.dart';
import 'package:water_wheel/pages/Settings.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';


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
      }
  ));
}


