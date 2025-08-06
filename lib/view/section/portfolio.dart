import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:my_page2/component/section_component.dart';
import 'package:my_page2/view/section/portfolio_detail/appst.dart';
import 'package:my_page2/view/section/portfolio_detail/date_snap.dart';
import 'package:my_page2/view/section/portfolio_detail/mindit.dart';
import 'package:my_page2/view/section/portfolio_detail/my_page.dart';
import 'package:my_page2/view/section/portfolio_detail/screen_on_flutter.dart';

import '../../component/portfolio_component.dart';
import '../../component/text_component.dart';

class Portfolio extends StatelessWidget {
  final GlobalKey globalKey;
  const Portfolio({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    final portflio_list = [
      PortfolioComponent(
        title: "Mindit",
        day: "2025-06",
        subTitle: "습관을 길러주는 습관 트래커 앱",
        content: [
          "Riverpod를 적극적으로 사용한 앱",
          "커스텀 패키지를 사용하여 락스크린 기능 구현",
          "Sqlite로 로컬 DataBase 사용",
        ],
        skills: ["Flutter", "Riverpod", "GoRouter"],
        detail: Mindit(),
      ),
      PortfolioComponent(
        title: "Screen On Flutter",
        day: "2025-06",
        subTitle: "플러터 락 스크린 패키지",
        content: [
          "플러터 위젯으로 락 스크린을 구현 가능",
          "화면을 감지하여 플러터 위젯을 로드",
          "add-to-app 기술 사용",
        ],
        skills: ["Flutter", "Kotlin"],
        detail: ScreenOnFlutter(),
      ),
      PortfolioComponent(
        title: "Date Snap",
        day: "2025-05",
        subTitle: "사진을 찍으면 라벨을 붙여주는 앱",
        content: [
          "현재 날짜로 라벨을 설정 가능",
          "화면의 비율 기반으로 위치를 유연하게 저장",
          "폰트를 네이버로 부터 자동으로 다운로드 ",
        ],
        skills: ["Flutter"],
        detail: DateSnap(),
      ),
      PortfolioComponent(
        title: "Appst",
        day: "2025-08-05(현재)",
        subTitle: "앱 개발자를 위한 커뮤니티",
        content: [
          "최초의 웹 서비스 개발",
          "개발자들의 설치 인증 시스템을 갖춘 커뮤니티",
          "현재 진행 중인 풀스택 개발",
        ],
        skills: ["Flutter", "Riverpod", "NestJs", "PostgreSQL", "AWS"],
        detail: Appst(),
      ),
      PortfolioComponent(
        title: "포토폴리오 웹",
        day: "2025-08-01",
        subTitle: "내 포토폴리오",
        content: ["개발 포토폴리오 웹사이트", "Flutter의 구조를 이해한 최적화 설계"],
        skills: ["Flutter", "AWS"],
        detail: MyPage(),
      ),
    ];

    return SectionComponent(
      globalKey: globalKey,
      backgroundColor: Color(0xFFF5F5F5),
      child: Column(
        children: [
          SizedBox(height: 40),
          TextComponent(
            text: "Portfolio",
            fontFamily: "GoogleSansCode",
            fontSize: 40,
            color: Colors.black87,
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Wrap(
              spacing: 20,
              children: portflio_list.expandIndexed((i, x) => [x]).toList(),
            ),
          ),
          SizedBox(height: 300),
        ],
      ),
    );
  }
}
