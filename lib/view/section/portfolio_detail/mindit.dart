import 'package:flutter/material.dart';

import '../../../component/app_portflio_component.dart';
import '../../../component/detail_component.dart';
import '../../../component/picture_list_component.dart';
import '../../../component/text_component.dart';
import '../../../model/skill_model.dart';

class Mindit extends StatelessWidget {
  const Mindit({super.key});
  static const model = Skils_Model(
    Framwork: ["Flutter"],
    Language: ["Dart"],
    package: [
      "Riverpod",
      "Table Calendar",
      "skeletonizer",
      "Go Router",
      "sqflite",
      "json_annotation",
    ],
    git_link: ["https://github.com/xpsa0720/mindit"],
    title: "Mindit - 습관 트래커 앱",
    descriptor:
        "큰 발전을 이룰수 있었던 개인 프로젝트입니다.\n처음으로 패키지를 만든 경험이 되었으며\n화면을 감지하여 락 스크린을 구현했습니다.",

    Language_skil: ["Riverpod", "sqflite"],
    gif_path: "assets/images/gif/mindit_test.gif",
    // gif_path: "assets/images/gif/mindit_1.jpg",
    isRight: true,
    platform: ['Android'],
    personnel: 1,
  );

  @override
  Widget build(BuildContext context) {
    return DetailComponent(
      title: "MindIt - 습관을 만들다.",
      child: Column(
        children: [
          AppPortfolioComponent(model: model),
          SizedBox(height: 40),
          ScreenShot(),
          SizedBox(height: 40),
          Provider(),
          SizedBox(height: 40),
          LockScreen(),
        ],
      ),
    );
  }
}

class ScreenShot extends StatelessWidget {
  const ScreenShot({super.key});

  @override
  Widget build(BuildContext context) {
    final screenshot_list = [
      [
        "assets/images/mindit/mindit_1.jpg",
        "assets/images/mindit/mindit_3.jpg",
      ],
      [
        "assets/images/mindit/mindit_5.jpg",
        "assets/images/mindit/mindit_4.jpg",
      ],
      [
        "assets/images/mindit/mindit_2.jpg",
        "assets/images/screen_on_flutter/screen_on_flutter_test.jpg",
      ],
    ];

    return PictureListComponent(
      list: screenshot_list,
      PictureWidth: 350,
      SizedBoxWidth: 20,
      SizedBoxHeight: 40,
    );
  }
}

class Provider extends StatelessWidget {
  const Provider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextComponent(text: "상태관리 종속 관계"),
        SizedBox(height: 10),
        Image.asset("assets/images/mindit/mindit_provider_1.png", width: 800),
        SizedBox(height: 20),
        Image.asset("assets/images/mindit/mindit_provider_2.png", width: 800),
      ],
    );
  }
}

class LockScreen extends StatelessWidget {
  const LockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextComponent(text: "add-to-app 기술을 이용한 락 스크린"),
        const TextComponent(text: "(Screen on Flutter 참고)"),
        SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
          ),
          child: Image.asset(
            "assets/images/screen_on_flutter/screen_on_flutter_test.jpg",
            width: 350,
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
