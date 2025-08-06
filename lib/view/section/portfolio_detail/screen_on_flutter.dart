import 'package:flutter/material.dart';
import 'package:my_page2/component/detail_component.dart';

import '../../../component/app_portflio_component.dart';
import '../../../component/image_component.dart';
import '../../../component/text_component.dart';
import '../../../model/skill_model.dart';

class ScreenOnFlutter extends StatelessWidget {
  const ScreenOnFlutter({super.key});

  static const model = Skils_Model(
    Framwork: ["Flutter"],
    Language: ["Dart", "Kotlin"],
    title: "Screen On Flutter",
    package: [],
    descriptor:
        "Flutter을 위한 락 스크린 패키지입니다.\n락 스크린은 kotlin으로 구현해야 하지만\n플러터 액티비티와 플러터 엔진을 사용하여\nFlutter 위젯을 보여줍니다",
    git_link: ["https://github.com/xpsa0720/screen_on_flutter"],
    Language_skil: [],
    gif_path: "assets/images/screen_on_flutter/screen_on_flutter_test.jpg",
    isRight: false,
    platform: ['Android'],
    personnel: 1,
  );

  @override
  Widget build(BuildContext context) {
    return DetailComponent(
      title: "Screen On Flutter - 없던 패키지를 만들다.",
      child: Column(
        children: [
          AppPortfolioComponent(model: model),
          SizedBox(height: 50),
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
        const TextComponent(text: "사용 예시"),
        const ImageComponent(
          path: "assets/images/screen_on_flutter/screen_on_flutter_4.png",
          width: 800,
        ),
        SizedBox(height: 50),
        SizedBox(
          width: 700,
          child: TextComponent(
            height: 1.7,
            textAlign: TextAlign.center,
            text: '플러터 엔진을 생성하고 서비스와 리시버를 등록하여\n 생성한 플러터 엔진으로 플러터 액티비티를 보여줍니다.',
          ),
        ),
        SizedBox(height: 50),
        TextComponent(text: "구조"),
        const ImageComponent(
          path: "assets/images/screen_on_flutter/screen_on_flutter_5.png",
          width: 800,
        ),
        SizedBox(height: 50),
        MethodChannelRequest(),
        SizedBox(height: 50),
        ScreenOnRegister(),
        SizedBox(height: 50),
        CreateFlutterEngine(),
        SizedBox(height: 50),
        const TextComponent(text: "고도화 방향"),
        SizedBox(height: 50),
        SizedBox(
          width: 700,
          child: TextComponent(
            textAlign: TextAlign.center,
            height: 1.7,
            text:
                "치명적인 단점은 각 엔진이 상태 데이터(Provider)를 공유하지 못합니다. 상태 관리에 불리하기 때문에 하나의 플러터 엔진으로 락 스크린을 띄우는 고도화 작업을 진행할 예정입니다.",
          ),
        ),
        SizedBox(height: 50),
        const TextComponent(text: "개선된 구조"),
        ImageComponent(
          path: "assets/images/screen_on_flutter/screen_on_flutter_8.png",
          width: 800,
        ),
        SizedBox(height: 50),
        SizedBox(
          width: 700,
          child: TextComponent(
            height: 1.7,
            textAlign: TextAlign.center,

            text:
                "개선된 구조는 패키지에 method channel Listener 기능을 넣어 사용자가 화면을 키게 되면 플러터에게 신호를 보내어 플러터의 GoRouter가 LockScreen으로 라우팅하게 개선할 예정입니다.",
          ),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}

class CreateFlutterEngine extends StatelessWidget {
  const CreateFlutterEngine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextComponent(text: 'Create Flutter Engine'),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
              ),
              child: Image.asset(
                "assets/images/screen_on_flutter/create_flutter_engine.png",
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 50),

            Image.asset(
              "assets/images/screen_on_flutter/screen_on_flutter_1.png",
              width: 600,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ],
    );
  }
}

class ScreenOnRegister extends StatelessWidget {
  const ScreenOnRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextComponent(text: 'Screen On Register Receciver'),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
              ),
              child: Image.asset(
                "assets/images/screen_on_flutter/screen_on_registerReceiver.png",
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 50),

            Image.asset(
              "assets/images/screen_on_flutter/screen_on_flutter_7.png",
              width: 600,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ],
    );
  }
}

class MethodChannelRequest extends StatelessWidget {
  const MethodChannelRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextComponent(text: 'Method Channel Request'),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
              ),
              child: Image.asset(
                "assets/images/screen_on_flutter/screen_on_flutter_6.png",
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 50),

            Image.asset(
              "assets/images/screen_on_flutter/start_service.png",
              width: 600,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ],
    );
  }
}
