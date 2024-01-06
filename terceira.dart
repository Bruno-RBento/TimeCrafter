import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'primeiro.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitched = true; // Set the initial value as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Summary'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Activity Summary',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PinkContainer(),
                  PinkContainerSchedule(),
                  PinkContainerFireplace(),
                ],
              ),
              SizedBox(height: 20), // Add some space between the rows
              Text(
                'Focus Hours',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Week',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isSwitched ?   Colors.pinkAccent : Colors.blue,
                    ),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (bool value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeColor: Colors.white,
                    inactiveTrackColor: Colors.pinkAccent,
                  ),
                  Text(
                    'Month',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isSwitched ? Colors.blue : Colors.pinkAccent,
                    ),
                  ),
                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add your logout logic here
                      // For simplicity, let's just print a message for now
                      Navigator.push(context, MaterialPageRoute(builder:  (context) => GraphPage(title: "Study Time")));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Use the theme color or customize
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Graph',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SecondWindow {

}

// ... Your existing PinkContainer, PinkContainerSchedule, and PinkContainerFireplace classes ...




class PinkContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.access_time,
                color: Colors.tealAccent,
              ),
              SizedBox(width: 5),
              Text(
                '11',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text('Hours Passed'),
        ],
      ),
    );
  }
}

class PinkContainerSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.calendar_month,
                color: Colors.tealAccent,
              ),
              SizedBox(width: 5),
              Text(
                '11',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text('Days Passed'),
        ],
      ),
    );
  }
}

class PinkContainerFireplace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.fireplace,
                color: Colors.tealAccent,
              ),
              SizedBox(width: 5),
              Text(
                '11',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text('Day\n Streak'),
        ],
      ),
    );
  }
}
