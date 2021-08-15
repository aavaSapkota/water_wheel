import 'package:flutter/material.dart';
import 'package:water_wheel/pages/Home.dart';
import 'package:water_wheel/pages/WaterSensorManager.dart';
import 'package:water_wheel/pages/Loading.dart';
import 'package:water_wheel/pages/Settings.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  runApp(MaterialApp(
      home: FutureBuilder(
          future: _fbApp,
          builder:(context, snapshot){
            if(snapshot.hasError){
              print('You have an error! ${snapshot.error.toString()}');
              return Text('Something went wrong!');
            }else if (snapshot.hasData){
              return Home();
            }else{
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },),
        initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/waterSensorManager': (context) => WaterSensorManger(),
        '/userProfile': (context)=> Settings(),
      }
  ));
}


