import 'dart:async';
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TimerApp(),
    );
  }
}

class TimerApp extends StatefulWidget {
  @override
  _TimerAppState createState() => _TimerAppState();
}

class _TimerAppState extends State<TimerApp> {
  int selectedMinutes25 = 25;
  int selectedMinutes5 = 5;
  int selectedMinutes15 = 15;
  int allseconds = 25 * 60;
  bool isRunning = false;
  late Timer timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TimeCrafter'),
        actions: [
          IconButton(
            icon: Icon(Icons.bar_chart),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Handle settings action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton('Timer', selectedMinutes25),
              buildButton('Short Break', selectedMinutes5),
              buildButton('Long Break', selectedMinutes15),
            ],
          ),
          SizedBox(height: 10),
          buildTimer(allseconds),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              startStopTimer();
            },
            child: Text(isRunning ? 'Stop' : 'Start'),
          ),
        ],
      ),
    );
  }

  Widget buildButton(String name, int duration) {
    return ElevatedButton(
      onPressed: () {
        setTimerDuration(duration);
      },
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  void setTimerDuration(int minutes) {
    setState(() {
      allseconds = minutes * 60;
    });
  }

  Widget buildTimer(int seconds) {
    return TimerBuilder.periodic(
      Duration(seconds: 1),
      builder: (context) {
        int minutes = seconds ~/ 60;
        int remainingSeconds = seconds % 60;
        return Text(
          '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}',
          style: TextStyle(fontSize: 120),
        );
      },
    );
  }

  void startStopTimer() {
    setState(() {
      if (isRunning) {
        isRunning = false;
        timer.cancel();
      } else {
        isRunning = true;
        const oneSec = Duration(seconds: 1);
        timer = Timer.periodic(
          oneSec,
          (Timer timer) {
            if (isRunning && allseconds > 0) {
              setState(() {
                allseconds--;
              });
            } else {
              timer.cancel();
              isRunning = false;
            }
          },
        );
      }
    });
  }
}
