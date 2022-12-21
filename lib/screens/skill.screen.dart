import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SkillScreen extends StatefulWidget {
  static const routeName = '/skill';

  const SkillScreen({Key? key}) : super(key: key);

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('ux/ui', 10, const Color.fromARGB(255, 255, 138, 138)),
      ChartData('Web Frontend', 30, const Color.fromARGB(255, 123, 255, 160)),
      ChartData(
          'Mobile App Frontend', 20, const Color.fromARGB(255, 143, 221, 255)),
      ChartData('API Backend', 25, const Color.fromARGB(255, 253, 255, 148)),
      ChartData('DevOps', 15, const Color.fromARGB(255, 251, 196, 255))
    ];
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
            side: BorderSide(
              width: 1.0,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Container(
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(height: 40),
                const Text(
                  'ทักษะด้านการเขียนโปรแกรม',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 100),
                SfCircularChart(series: <CircularSeries>[
                  PieSeries<ChartData, String>(
                    radius: '180',
                    dataSource: chartData,
                    pointColorMapper: (ChartData data, _) => data.color,
                    xValueMapper: (ChartData data, _) => data.name,
                    yValueMapper: (ChartData data, _) => data.value,
                    dataLabelMapper: (ChartData data, _) =>
                        '${data.name}\n${data.value}%',
                    dataLabelSettings: const DataLabelSettings(
                        isVisible: true,
                        textStyle: TextStyle(fontFamily: 'Itim')),
                  ),
                ]),
              ],
            )),
      ),
    ));
  }
}

class ChartData {
  ChartData(this.name, this.value, this.color);
  final String name;
  final double value;
  final Color color;
}
