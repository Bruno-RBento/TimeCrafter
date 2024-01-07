import 'package:flutter/material.dart';
import 'package:time_crafter/timer_crafter.dart';
import 'package:time_crafter/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue, 
        fontFamily: 'Roboto', 
      ),
      home: Login(),      //home: timer_crafter(),
    );
  }
}
