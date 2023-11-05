import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_assgn/Tourism%20App%20Project/screens/2login_signup.dart';
import 'package:flutter_assgn/Tourism%20App%20Project/screens/3login.dart';
import 'package:flutter_assgn/Tourism%20App%20Project/screens/4signup.dart';
import 'package:flutter_assgn/Tourism%20App%20Project/screens/5home.dart';
import 'package:flutter_assgn/Tourism%20App%20Project/screens/6detail.dart';
import 'package:flutter_assgn/Tourism%20App%20Project/screens/7explore.dart';
import 'package:flutter_assgn/Tourism%20App%20Project/screens/8payment.dart';

void main() {
  runApp(MaterialApp(home: Introscreen(), routes: {
    'login signup': (context) => Login_signup(),
    'login': (context) => Tour_Signin(),
    'register': (context) => Tour_Sign_up(),
    'home': (context) => Tour_Home(),
    'details': (context) => Tour_details(),
    'explore': (context) => Tour_Explore(),
    'pay': (context) => Tour_Payment()
  }));
}

class Introscreen extends StatefulWidget {
  const Introscreen({super.key});

  @override
  State<Introscreen> createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Login_signup()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/travel.png'),
      ),
    );
  }
}
