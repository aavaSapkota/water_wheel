import 'package:flutter/material.dart';


class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  int _selectedItemIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/home');
                },
                child: Text("here"),
              ),
            ],

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


