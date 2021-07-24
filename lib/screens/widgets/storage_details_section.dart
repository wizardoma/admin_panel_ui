import 'package:admin_panel_ui/constants.dart';
import 'package:admin_panel_ui/screens/widgets/piechart.dart';
import 'package:admin_panel_ui/screens/widgets/storage_info_card.dart';
import 'package:flutter/material.dart';

class StorageDetailsSection extends StatelessWidget {
  final List<String> _files = [
    "Documents",
    "Music",
    "Videos",
    "Apps",
    "Others",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
//                    height: 500,
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
            PieChartSection(),
            ..._files
                .map(
                  (e) => StorageInfoCard(
                    title: e,
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
