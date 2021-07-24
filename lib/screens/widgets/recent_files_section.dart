import 'package:admin_panel_ui/constants.dart';
import 'package:admin_panel_ui/screens/widgets/recent_file_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFilesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Recent Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ...List.generate(5, (index) => RecentFileListItem())

          ],
        ),
      ),
    );
  }
}
