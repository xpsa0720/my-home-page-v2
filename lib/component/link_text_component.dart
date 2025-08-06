import 'package:flutter/material.dart';
import 'package:my_page2/component/text_component.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkTextComponent extends StatelessWidget {
  final String text;
  final String link;
  final double fontSize;
  const LinkTextComponent({
    super.key,
    required this.text,
    required this.link,
    this.fontSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          final url = Uri.parse(link);
          if (await canLaunchUrl(url)) {
            await launchUrl(
              url,
              mode: LaunchMode.externalApplication,
            ); // 새 탭 or 외부 브라우저
          }
        },
        child: TextComponent(
          text: text,
          color: Colors.blue,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
