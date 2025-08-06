import 'package:flutter/material.dart';
import 'package:my_page2/component/section_component.dart';
import 'package:my_page2/component/text_component.dart';

class HeadSection extends StatelessWidget {
  static double get height => 300;

  final GlobalKey globalKey;
  const HeadSection({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    print("리빌드");
    return SectionComponent(
      globalKey: globalKey,
      height: 300,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background/space.jpg"),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              color: Colors.black87,
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextComponent(
              text: "엄용진",
              fontSize: 45,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            TextComponent(
              text: "개발 포토폴리오",
              fontSize: 45,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
