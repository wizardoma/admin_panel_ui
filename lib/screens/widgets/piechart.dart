import 'package:admin_panel_ui/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(children: [
        PieChart(pieChartData()),
        Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  "29.1",
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 0.5),
                ),
                Text("of 128GB"),
              ],
            ))
      ]),
    );
  }

  PieChartData pieChartData() {
    return PieChartData(
        sectionsSpace: 0,
        centerSpaceRadius: 70,
        startDegreeOffset: -90,
        sections: [
          PieChartSectionData(
              color: primaryColor, value: 25, showTitle: false, radius: 23),
          PieChartSectionData(
              color: Colors.lightBlue, value: 15, showTitle: false, radius: 20),
          PieChartSectionData(
              color: Colors.red, value: 10, showTitle: false, radius: 18),
          PieChartSectionData(
              color: primaryColor, value: 25, showTitle: false, radius: 25),
          PieChartSectionData(
              color: Colors.green, value: 35, showTitle: false, radius: 30),
        ]);
  }

}
