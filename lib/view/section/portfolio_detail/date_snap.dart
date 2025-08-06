import 'package:flutter/material.dart';
import 'package:my_page2/component/detail_component.dart';

import '../../../component/app_portflio_component.dart';
import '../../../component/image_component.dart';
import '../../../component/link_text_component.dart';
import '../../../component/picture_list_component.dart';
import '../../../component/text_component.dart';
import '../../../model/skill_model.dart';

class DateSnap extends StatelessWidget {
  const DateSnap({super.key});
  static const model = Skils_Model(
    Framwork: ["Flutter"],
    Language: ["Dart"],
    package: [
      "flutter_downloader",
      "permission_handler",
      "file_picker",
      "image_picker",
      "image_gallery_saver",
      "http",
    ],
    git_link: ["https://github.com/xpsa0720/date_snap"],
    title: "Date Snap - 라벨 삽입 앱",
    descriptor:
        "날짜와 라벨을 삽입하는 앱 입니다.\n라벨의 위치는 디스플레이의 가로 세로 비율을\n참고하여 유연하게 위치를 설정합니다.",

    Language_skil: [],
    gif_path: "assets/images/gif/date_snap_test.gif",
    isRight: true,
    platform: ['Android'],
    personnel: 1,
  );
  static const screenshot_list = [
    [
      "assets/images/date_snap/date_snap_1.jpg",
      "assets/images/date_snap/date_snap_2.jpg",
    ],
    [
      "assets/images/date_snap/date_snap_3.jpg",
      "assets/images/date_snap/date_snap_4.jpg",
    ],
    [
      "assets/images/date_snap/date_snap_5.jpg",
      "assets/images/date_snap/date_snap_6.jpg",
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return DetailComponent(
      title: "Date Snap - 자동 라벨 기능",
      child: Column(
        children: [
          AppPortfolioComponent(model: model),
          SizedBox(height: 60),
          PictureListComponent(
            list: screenshot_list,
            PictureWidth: 350,
            SizedBoxWidth: 40,
            SizedBoxHeight: 50,
          ),
          SizedBox(height: 50),
          const TextComponent(text: "라벨 데이터 저장 방식"),
          Image.asset(
            "assets/images/date_snap/date_snap_7.png",
            width: 700,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 50),
          SizedBox(
            width: 700,
            child: TextComponent(
              height: 1.6,
              text:
                  "라벨 데이터는 shared_preferences를 사용하여 저장했으며, 화면 길이에 비례하는 비율 기반으로 저장했습니다. 라벨의 크기는 라벨이 화면에서 비중을 차지하는 비율을 저장했습니다.",
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            width: 700,
            child: TextComponent(
              height: 1.7,
              text: "현재 비공개 테스트를 진행중이며, 아래의 이메일 그룹에 가입하여 사전 체험을 하실 수 있습니다",
            ),
          ),
          SizedBox(height: 50),
          const ImageComponent(
            path: "assets/images/date_snap/date_snap_8.jpg",
            width: 350,
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextComponent(text: "이메일 그룹: "),
              LinkTextComponent(
                text: "링크",
                link: "https://groups.google.com/g/xpsa0720",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextComponent(text: "Date Snap: "),
              LinkTextComponent(
                text: "링크",
                link:
                    "https://play.google.com/store/apps/details?id=com.xpsa.data_snap",
              ),
            ],
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
