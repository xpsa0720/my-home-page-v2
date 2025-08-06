import 'package:my_page2/component/detail_component.dart';
import 'package:flutter/material.dart';
import 'package:my_page2/component/text_component.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailComponent(
      title: "내 포토폴리오 - 웹 사이트",
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(width: 1)),
              child: Image.asset(
                "assets/images/my_page/my_page.png",
                width: 700,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 700,
              child: TextComponent(
                text: "지금까지의 경력과 실력을 보여줄 수 있는 포토폴리오를 만들고 싶었습니다.",
                wrapAlignment: WrapAlignment.center,
              ),
            ),
            SizedBox(height: 40),

            Container(
              decoration: BoxDecoration(border: Border.all(width: 1)),
              child: Image.asset(
                "assets/images/my_page/my_page_windows.png",
                width: 700,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 700,
              child: TextComponent(
                height: 1.6,
                text:
                    " 초기에 만든 Windows XP 디자인을 컨셉을 한 포토폴리오는 디자인 평판이 안 좋고, 프레임과 성능이 떨어져 지금의 모습으로 리메이크 하게 되었습니다.",

                wrapAlignment: WrapAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
