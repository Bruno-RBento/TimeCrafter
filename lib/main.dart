import 'package:flutter/material.dart';
import 'package:time_crafter/timer_crafter.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: timer_crafter(),
    );
  }
}
