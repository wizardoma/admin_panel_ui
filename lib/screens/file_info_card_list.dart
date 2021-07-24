import 'package:admin_panel_ui/constants.dart';
import 'package:admin_panel_ui/screens/widgets/file_info_card.dart';
import 'package:flutter/material.dart';

class FileInfoCardList extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  const FileInfoCardList({Key? key, this.crossAxisCount = 4, this.childAspectRatio = 1.4}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: defaultPadding),
        itemBuilder: (context, builder) {
          return FileInfoCard();
        });

  }
}
