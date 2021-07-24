import 'dart:math';

import 'package:admin_panel_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorageInfoCard extends StatelessWidget {
  final String title;

  const StorageInfoCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding / 2),
        padding: EdgeInsets.all(
          defaultPadding / 2,
        ),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: primaryColor.withOpacity(0.15),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: SvgPicture.asset("assets/icons/file.svg"),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(
                  defaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "${Random().nextInt(2000)} Files",
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            color: Colors.white70,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Text("1.30GB")
          ],
        ));
  }
}
