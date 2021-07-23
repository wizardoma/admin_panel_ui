import 'package:admin_panel_ui/constants.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5
      ),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10,),
          ),
          border: Border.all(color: Colors.white10)),
      padding: EdgeInsets.symmetric(
        vertical: defaultPadding / 2,
        horizontal: defaultPadding,
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/icons/profile.png",
            height: 38,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 2),
            child: Text(
              "Ibekason Alexander",
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
          )
        ],
      ),
    );
  }
}
