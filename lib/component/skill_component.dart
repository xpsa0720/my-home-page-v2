import 'package:flutter/material.dart';
import 'package:my_page2/component/text_component.dart';

class SkillComponent extends StatelessWidget {
  final Color color;
  final String skill;
  final bool isBlack;
  const SkillComponent({
    super.key,
    required this.color,
    required this.skill,
    this.isBlack = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextComponent(
          text: skill,
          fontFamily: "GoogleSansCode",
          color: isBlack ? Colors.black87 : Colors.white,
        ),
      ),
    );
  }
}
