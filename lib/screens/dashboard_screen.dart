import 'package:admin_panel_ui/constants.dart';
import 'package:admin_panel_ui/responsive.dart';
import 'package:admin_panel_ui/screens/file_info_card_list.dart';
import 'package:admin_panel_ui/screens/widgets/dashboard_header.dart';
import 'package:admin_panel_ui/screens/widgets/recent_files_section.dart';
import 'package:admin_panel_ui/screens/widgets/storage_details_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
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
                          ),
                        ],
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Responsive(
                        mobile: FileInfoCardList(
                          crossAxisCount: _size.width < 600 ? 1 : 2,
                          childAspectRatio: 2,
                        ),
                        tablet: FileInfoCardList(
                          childAspectRatio: 1.2,
                        ),
                        desktop: FileInfoCardList(
                          childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
                        ),
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      if (Responsive.isMobile(context))
                        SizedBox(
                          width: defaultPadding,
                        ),
                      if (Responsive.isMobile(context))
                        StorageDetailsSection(),
                      RecentFilesSection(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    width: defaultPadding,
                  ),
                if (!Responsive.isMobile(context))
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
