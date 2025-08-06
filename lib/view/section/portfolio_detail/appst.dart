import 'package:flutter/material.dart';
import 'package:my_page2/component/detail_component.dart';

import '../../../component/text_component.dart';
import '../../../component/web_portfolio_component.dart';
import '../../../model/skill_model.dart';

class Appst extends StatelessWidget {
  const Appst({super.key});
  static const model = Skils_Model(
    Framwork: ["Flutter", "NestJs"],
    Language: ["Dart", "TypeScript"],
    package: [],
    git_link: [
      "https://github.com/xpsa0720/appst_frontend",
      "https://github.com/xpsa0720/appst_backend",
    ],
    title: "APPST - 앱 개발자 커뮤니티",
    descriptor: "플레이 스토어 앱 개발자를 위한 커뮤니티입니다. 비공개 테스트를 쉽게 하기 위해 만든 웹 서비스입니다.",
    Language_skil: [],
    gif_path: "assets/images/appst/appst_6.png",

    isMaking: true,
    isRight: true,
    platform: ['Web', 'Android'],
    personnel: 1,
  );
  @override
  Widget build(BuildContext context) {
    return DetailComponent(
      title: "Appst - 앱 개발자를 위한 커뮤니티(개발 중..)",
      child: Column(
        children: [
          WebPortfolioComponent(model: model),
          const SizedBox(height: 60),
          Descriptor(),
        ],
      ),
    );
  }
}

class Descriptor extends StatelessWidget {
  const Descriptor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 700,
          child: const TextComponent(
            wrapAlignment: WrapAlignment.center,
            height: 1.6,
            text:
                "현재 구글 플레이 스토어에선 앱을 출시 하기 위해 2주간 12명의 테스터가 앱 테스트를 진행해야 합니다. 이를 위한 네이버 카페가 존재하며 사용자는 서로의 앱을 다운로드하고 인증하여 서로 돕는 구조로 되어 있습니다. 설치 과정이 복잡하며 설치 인증도 번거롭다는 단점이 존재합니다.",
          ),
        ),
        const SizedBox(height: 60),
        const TextComponent(text: "테스트 과정"),
        Image.asset("assets/images/appst/appst_1.png", width: 700),
        const SizedBox(height: 60),
        const TextComponent(text: "번거로운 인증 과정"),
        Image.asset("assets/images/appst/appst_2.png", width: 500),
        SizedBox(height: 60),
        SizedBox(
          width: 700,
          child: const TextComponent(
            height: 1.6,
            wrapAlignment: WrapAlignment.center,
            text:
                "이를 해결하기 위해 appst라는 커뮤니티를 만들기로 했습니다. Google groups라는 기능을 이용하면 그룹에 가입된 이메일은 비공개 테스트를 이용 할 수 있는 기능을 활용하여 테스터와 개발자의 빠른 테스트가 가능하게 해줍니다.",
          ),
        ),
        const SizedBox(height: 60),
        const TextComponent(text: "appst로 진행하는 인증과정"),
        Image.asset("assets/images/appst/appst_3.png", width: 700),
        const SizedBox(height: 60),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextComponent(text: "1. 작성자는 구글 그룹과 게시물을 작성합니다."),
            const TextComponent(text: "2. 테스터는 구글 그룹에 가입하며 앱을 설치하여 인증합니다."),
            const TextComponent(text: "3. 작성자는 인증을 확인하여 승인합니다."),
          ],
        ),
        const SizedBox(height: 60),
        const TextComponent(text: "사용자와 테스터는 서로 대화할 필요가 없습니다."),
        const TextComponent(text: "(설치와 인증 과정, 인증 확인이 매우 빠릅니다.)"),
        const SizedBox(height: 60),
        Image.asset("assets/images/appst/appst_4.png", width: 700),
        const SizedBox(height: 60),
        SizedBox(
          width: 700,
          child: const TextComponent(
            wrapAlignment: WrapAlignment.center,
            height: 1.6,
            text:
                "appst는 서로 돕는 공간이기 때문에 자신의 앱을 설치한 횟수와 타인의 앱을 설치한 횟수를 비율로 계산한 점수 시스템을 도입할 예정입니다.",
          ),
        ),
        const SizedBox(height: 60),
      ],
    );
  }
}
