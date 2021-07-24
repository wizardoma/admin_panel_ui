import 'package:admin_panel_ui/constants.dart';
import 'package:admin_panel_ui/responsive.dart';
import 'package:admin_panel_ui/screens/widgets/profile_card.dart';
import 'package:admin_panel_ui/screens/widgets/search_field.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            if (Responsive.isMobile(context))
              IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
            Text(
              "Dashboard",
              style: Theme.of(context).textTheme.headline6,
            ),
            if (!Responsive.isMobile(context))
              Spacer(
                flex: 2,
              ),
            if (!Responsive.isMobile(context))
              Expanded(
                child: SearchField(),
              ),
            if (!Responsive.isMobile(context)) ProfileCard(),
          ],
        ),
        if (Responsive.isMobile(context))
          Column(
            children: [
              SizedBox(
                height: defaultPadding,
              ),
              SearchField(),
              SizedBox(
                height: defaultPadding,
              ),
            ],
          ),
        if (Responsive.isMobile(context)) ProfileCard(),
      ],
    );
  }
}
