import 'package:admin_panel_ui/screens/widgets/drawer_list_tile.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  List<String> drawerItems = [
    "Dashboard",
    "Transactions",
    "Store",
    "Documents",
    "Notification",
    "Task",
    "Profile",
    "Settings"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DrawerHeader(
            child: Image.asset(
              "assets/images/logo.png",
              width: 25,
              height: 25,
            ),
          ),
          ...drawerItems.map(
                (e) => DrawerListTile(
                title: e,
                iconData: Icons.arrow_forward_ios,
                press: () => {}),
          ),
        ],
      ),
    );
  }
}
