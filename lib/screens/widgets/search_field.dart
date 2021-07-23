import 'package:admin_panel_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
          fillColor: secondaryColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
//                          margin: EdgeInsets.symmetric(
//                              horizontal: defaultPadding / 2),
              padding: EdgeInsets.all(defaultPadding * 0.25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor,
              ),
              child: SvgPicture.asset(
                "assets/icons/search.svg",
                color: Colors.white,
                width: 25,
                height: 25,
              ),
            ),
          )),
    );
  }
}
