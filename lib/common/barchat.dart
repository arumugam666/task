import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProgramPieChart extends StatelessWidget {
  final int premiumCount = 40;
  final int freeCount = 54;

  @override
  Widget build(BuildContext context) {
    final int total = premiumCount + freeCount;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            PieChart(
              PieChartData(
                centerSpaceRadius: 80,
                sectionsSpace: 0,
                sections: [
                  PieChartSectionData(
                    value: premiumCount.toDouble(),
                    color: Colors.amber, // yellow
                    radius: 50,
                    showTitle: false,
                  ),
                  PieChartSectionData(
                    value: freeCount.toDouble(),
                    color: Colors.blue, // blue
                    radius: 50,
                    showTitle: false,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Total Programs', style: TextStyle(fontSize: 18)),
                Text(
                  '$total',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}