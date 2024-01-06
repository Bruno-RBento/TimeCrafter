
import 'package:flutter/material.dart';
// import 'package:semana5/terceira.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphPage extends StatefulWidget {
  const GraphPage({super.key, required this.title});

  final String title;

  @override
  State<GraphPage> createState() => _GraphPageState();
}
class TimeStudied {
  TimeStudied(this.time, this.dayOfWeek);
  final double time;
  final String dayOfWeek;

}

class _GraphPageState extends State<GraphPage> {
  late List<TimeStudied> _chartData;


  @override
  void initState() {
    _chartData = getTimeStudied();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('Gráfico'),),
      body: SfCartesianChart(series: <ChartSeries>[
        BarSeries<TimeStudied,String>(dataSource: _chartData,
            xValueMapper: (TimeStudied ts,_) => ts.dayOfWeek,
            yValueMapper: (TimeStudied ts,_) => ts.time)
      ],
        primaryXAxis: CategoryAxis(),
      ),
    ));
  }
  List<TimeStudied> getTimeStudied(){
    final List<TimeStudied> chartData = [
      TimeStudied(2.57,'Sunday'),
      TimeStudied(3.57,'Monday'),
      TimeStudied(4.57,'Tuesday'),
      TimeStudied(5.57,'Wednesday'),
      TimeStudied(2.57,'Thursday'),
      TimeStudied(2.57,'Friday'),
      TimeStudied(2.57,'Saturday'),
    ];
    return chartData;
  }

}


