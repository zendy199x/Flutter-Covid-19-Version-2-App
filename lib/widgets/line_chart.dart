import 'package:covid_19_ver_2/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineReportChart extends StatelessWidget {
  const LineReportChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: getSports(),
              isCurved: true,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
              colors: [kPrimaryColor],
              barWidth: 4,
            ),
          ],
        ),
      ),
    );
  }

  List<FlSpot> getSports() {
    return [
      const FlSpot(0, .5),
      const FlSpot(1, 1.5),
      const FlSpot(2, .5),
      const FlSpot(3, .7),
      const FlSpot(4, .2),
      const FlSpot(5, 2),
      const FlSpot(6, 1.5),
      const FlSpot(7, 1.7),
      const FlSpot(8, 1),
      const FlSpot(9, 2.8),
      const FlSpot(10, 2.5),
      const FlSpot(11, 2.65),
    ];
  }
}
