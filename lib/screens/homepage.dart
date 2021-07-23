import 'package:admin_panel_ui/screens/widgets/drawer_list_tile.dart';
import 'package:admin_panel_ui/screens/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(flex: 1, child: SideMenu()),
            Expanded(
                flex: 5,
                child: Container(
                  color: Colors.black,
                )),
          ],
        ),
      ),
    );
  }
}
