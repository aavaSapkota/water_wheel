import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  void delay(){
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  void initState(){
    super.initState();
    delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
          child: Center(
            child: SvgPicture.asset("assets/Logo.svg"),
          )
        )
    );
  }
}
