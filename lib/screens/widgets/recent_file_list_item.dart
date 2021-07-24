import 'package:admin_panel_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFileListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FittedBox(
        child: DataTable(
          columns: [
            DataColumn(
              label: Text(
                "File Name",
              ),
            ),
            DataColumn(
              label: Text(
                "Date",
              ),
            ),
            DataColumn(
              label: Text(
                "Size",
              ),
            ),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/file.svg",
                        height: 30,
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding,
                        ),
                        child: Text("XD File"),
                      )
                    ],
                  ),
                ),
                DataCell(
                  Text(
                    "01-03-2021",
                  ),
                ),
                DataCell(
                  Text(
                    "15mb",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );

  }
}
