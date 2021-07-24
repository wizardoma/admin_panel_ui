import 'package:admin_panel_ui/constants.dart';
import 'package:admin_panel_ui/screens/widgets/dashboard_header.dart';
import 'package:admin_panel_ui/screens/widgets/file_info_card.dart';
import 'package:admin_panel_ui/screens/widgets/storage_details_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(
          defaultPadding,
        ),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Files",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          ElevatedButton.icon(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: defaultPadding * 1.5,
                                    vertical: defaultPadding)),
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                            ),
                            label: Text(
                              "Add New",
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      GridView.builder(
                          shrinkWrap: true,
                          itemCount: 4,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  childAspectRatio: 1.4,
                                  crossAxisSpacing: defaultPadding),
                          itemBuilder: (context, builder) {
                            return FileInfoCard();
                          }),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      RecentFilesSections()
                    ],
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: StorageDetailsSection(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
