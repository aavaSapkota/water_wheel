
import 'package:flutter/material.dart';

class LeakReport extends StatefulWidget {
  const LeakReport({Key? key}) : super(key: key);

  @override
  _LeakReportState createState() => _LeakReportState();
}

class _LeakReportState extends State<LeakReport> {

  int _selectedItemIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leak Reports"),
      ),
      body:SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20,50,20,10),

                  child: Text(
                    'Overview',
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
                                flex: 2,
                                child: Container(
                                    padding: EdgeInsets.fromLTRB(8, 10, 10, 10),
                                    child: Text("Sensor")
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                    padding: EdgeInsets.fromLTRB(57, 0, 0, 0),
                                    child: Text(
                                        "Date"
                                    )
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Text("Liters ", textAlign:TextAlign.center),
                                ),
                              ),
                            ]
                        ),
                      )
                    ]
                ),
                Column(
                  children: [
                   Container(
                      margin: EdgeInsets.fromLTRB(30,10,30,0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text("sink")
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Text(
                                    "2021-08-03",
                                  )
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                  child: Text("Reported: 10:05:30")
                              ),
                            ),

                          ]
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30,10,30,0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text("sink")
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Text(
                                    "2021-08-09",
                                  )
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                  child: Text("Reported: 23:05:30")
                              ),
                            ),

                          ]
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30,10,30,0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text("garden hose")
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Text(
                                    "2021-08-11",
                                  )
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                  child: Text("Reported: 10:05:30")
                              ),
                            ),

                          ]
                      ),
                    ),
                  ]
                )
              ],
            ),
          )
      ),

    );
  }

}

