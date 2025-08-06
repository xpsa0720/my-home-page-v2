import 'package:flutter/material.dart';
import 'package:my_page2/component/section_component.dart';

import '../../component/skill_component.dart';
import '../../component/text_component.dart';

class Skill extends StatelessWidget {
  final GlobalKey globalKey;
  const Skill({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    return SectionComponent(
      globalKey: globalKey,
      backgroundColor: Colors.black87,
      child: Column(
        children: [
          SizedBox(height: 40),
          TextComponent(
            text: "Skills",
            fontFamily: "GoogleSansCode",
            fontSize: 40,
            color: Colors.white,
          ),
          SizedBox(height: 60),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Language(),
              SizedBox(height: 50),
              Front(),
              SizedBox(height: 50),
              DataBase(),
              SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      crossAxisAlignment: WrapCrossAlignment.start,
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      children: [
        SizedBox(
          width: 200,
          child: TextComponent(
            text: "Language:",
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        SkillComponent(color: Colors.white30, skill: "C"),
        SkillComponent(color: Colors.blue, skill: "Dart"),
        SkillComponent(color: Colors.white, skill: "Assembly", isBlack: true),
        SkillComponent(
          color: Colors.yellow,
          skill: "JavaScript",
          isBlack: true,
        ),
        SkillComponent(color: Colors.blue, skill: "TypeScript"),
        SkillComponent(
          color: Colors.yellow.shade200,
          skill: "Python",
          isBlack: true,
        ),
      ],
    );
  }
}

class Front extends StatelessWidget {
  const Front({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      children: [
        SizedBox(
          width: 200,
          child: TextComponent(
            text: "Framework:",
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        SkillComponent(
          color: Colors.lightBlueAccent.shade400,
          skill: "Flutter",
        ),
        SkillComponent(color: Colors.redAccent, skill: "NestJs"),
      ],
    );
  }
}

class DataBase extends StatelessWidget {
  const DataBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      children: [
        SizedBox(
          width: 200,
          child: TextComponent(
            text: "DataBase:",
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        SkillComponent(color: Colors.brown, skill: "Sqlite"),
        SkillComponent(color: Colors.blue.shade700, skill: "PostgreSQL"),
      ],
    );
  }
}
