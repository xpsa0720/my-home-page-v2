import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:my_page2/component/button_component.dart';
import 'package:my_page2/component/text_component.dart';

class PortfolioComponent extends StatelessWidget {
  final String title;
  final String subTitle;
  final String day;
  final List<String> content;
  final List<String> skills;
  final Widget detail;
  const PortfolioComponent({
    super.key,
    required this.title,
    required this.day,
    required this.subTitle,
    required this.content,
    required this.skills,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 600,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 0),
              blurRadius: 10,
            ),
          ],
          border: Border.all(width: 1, color: Colors.black12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Title(day: day, title: title),
            Line(),
            SubTitle(subTitle: subTitle),
            Content(content: content),
            Skills(skills: skills),
            ReadMore(detail: detail),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class ReadMore extends StatelessWidget {
  final Widget detail;
  const ReadMore({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 3, color: Colors.black87),
        ),
        child: ButtonComponent(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: SizedBox(
              width: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.book_outlined),
                  SizedBox(width: 5),
                  TextComponent(
                    text: "Read more",
                    fontFamily: "GoogleSansCode",
                    fontSize: 18,
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            showDialog(
              context: context,
              builder:
                  (_) => Dialog(backgroundColor: Colors.white, child: detail),
            );
          },
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String title;
  final String day;
  const Title({super.key, required this.title, required this.day});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextComponent(
            text: title,
            fontSize: 28,
            fontFamily: "GoogleSansCode",
          ),
          TextComponent(
            text: day,
            fontSize: 20,
            color: Colors.black38,
            fontFamily: "GoogleSansCode",
          ),
        ],
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  final String subTitle;
  const SubTitle({super.key, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: TextComponent(
        text: subTitle,
        fontSize: 20,
        fontFamily: "GoogleSansCode",
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(height: 1, color: Colors.black38),
    );
  }
}

class Content extends StatelessWidget {
  final List<String> content;
  const Content({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Column(
        children:
            content
                .expandIndexed(
                  (i, x) => [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.circle, size: 15),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextComponent(
                            text: x,
                            fontSize: 20,
                            fontFamily: "GoogleSansCode",
                            fontWeight: FontWeight.w100,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    if (i != content.length - 1) SizedBox(height: 10),
                  ],
                )
                .toList(),
      ),
    );
  }
}

class Skills extends StatelessWidget {
  final List<String> skills;
  const Skills({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          runSpacing: 15,
          children:
              skills
                  .expandIndexed(
                    (i, x) => [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade100,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: Colors.orangeAccent.shade400,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          child: TextComponent(
                            text: x,
                            fontWeight: FontWeight.w100,
                            fontSize: 18,
                            fontFamily: "GoogleSansCode",
                          ),
                        ),
                      ),
                      if (i != skills.length - 1) SizedBox(width: 10),
                    ],
                  )
                  .toList(),
        ),
      ),
    );
  }
}
