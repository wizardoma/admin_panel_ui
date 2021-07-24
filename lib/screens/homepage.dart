import 'package:admin_panel_ui/responsive.dart';
import 'package:admin_panel_ui/screens/dashboard_screen.dart';
import 'package:admin_panel_ui/screens/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Responsive.isMobile(context) ? Drawer(child: SideMenu()) : Container(),
      body: SafeArea(
        child: Row(
          children: [
            if (Responsive.isDesktop(context))
              Expanded(flex: 1, child: SideMenu()),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
