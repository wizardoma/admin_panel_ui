import 'package:admin_panel_ui/constants.dart';
import 'package:admin_panel_ui/screens/widgets/profile_card.dart';
import 'package:admin_panel_ui/screens/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Dashboard",
                style: Theme.of(context).textTheme.headline6,
              ),
              Spacer(),
              Expanded(
                child: SearchField(),
              ),
              ProfileCard(),
            ],
          )
        ],
      ),
    ));
  }
}
