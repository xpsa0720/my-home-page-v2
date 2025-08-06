import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:my_page2/component/link_text_component.dart';

import '../../component/section_component.dart';
import '../../component/text_component.dart';

class Introduce extends StatelessWidget {
  final GlobalKey globalKey;
  const Introduce({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    final profile_title = ["name", "birthday", "email", "GitHub"];
    final profile_content = ["엄용진", "2006.07.20", "xpsa0720@gmail.com"];

    return SectionComponent(
      globalKey: globalKey,
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          TextComponent(
            text: "Profile",
            fontFamily: "GoogleSansCode",
            fontSize: 40,
          ),
          SizedBox(height: 25),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            direction: Axis.horizontal,

            // alignment: WrapAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/profile/my_profile.jpg"),
                  ),
                  shape: BoxShape.circle,
                ),
                width: 180,
                height: 200,
              ),
              SizedBox(
                width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                            profile_title
                                .expandIndexed(
                                  (i, x) => [
                                    TextComponent(
                                      text: x + ":",
                                      fontFamily: "GoogleSansCode",
                                    ),
                                    if (i != profile_title.length - 1)
                                      SizedBox(height: 10),
                                  ],
                                )
                                .toList(),
                      ),
                    ),
                    Container(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...profile_content
                              .expandIndexed(
                                (i, x) => [
                                  TextComponent(
                                    text: x,
                                    fontFamily: "GoogleSansCode",
                                  ),
                                  SizedBox(height: 10),
                                ],
                              )
                              .toList(),
                          LinkTextComponent(
                            text: "link",
                            link: "https://github.com/xpsa0720",
                            fontSize: 26,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
