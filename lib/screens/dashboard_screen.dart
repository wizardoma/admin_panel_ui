import 'package:admin_panel_ui/constants.dart';
import 'package:admin_panel_ui/screens/widgets/dashboard_header.dart';
import 'package:admin_panel_ui/screens/widgets/storage_details_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(children: [
          Header(),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Files",
                          style: Theme
                              .of(context)
                              .textTheme
                              .subtitle1,
                        ),
                        ElevatedButton.icon(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: defaultPadding * 1.5,
                                  vertical: defaultPadding)),
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                          ),
                          label: Text(
                            "Add New",
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    GridView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: defaultPadding),
                        itemBuilder: (context, builder) {
                          return Container(
                            decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding:
                                      EdgeInsets.all(defaultPadding * 0.75),
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                      child: SvgPicture.asset(
                                          "assets/icons/file.svg"),
                                    ),
                                    Icon(
                                      Icons.more_vert,
                                      color: Colors.white54,
                                    ),
                                  ],
                                ),
                                Text(
                                  "Documents",
                                  maxLines: 1,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                    LayoutBuilder(
                                        builder: (context, constraints) {
                                          return Container(
                                            width: constraints.maxWidth * 0.5,
                                            height: 5,
                                            decoration: BoxDecoration(
                                                color: secondaryColor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                )),
                                          );
                                        })
                                  ],
                                )
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(flex: 2, child: StorageDetailsSection()),
            ],
          ),
        ],
        ),
      ),
    );
  }
}
