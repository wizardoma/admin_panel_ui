import 'package:admin_panel_ui/constants.dart';
import 'package:admin_panel_ui/screens/widgets/dashboard_header.dart';
import 'package:admin_panel_ui/screens/widgets/piechart.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(children: [
          Header(),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  height: 500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(defaultPadding),
                  height: 500,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Storage Details",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      PieChart(),
                    ],
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }

}