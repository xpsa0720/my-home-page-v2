import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:my_page2/component/text_component.dart';

import '../model/skill_model.dart';
import 'link_text_component.dart';

class AppPortfolioComponent extends StatelessWidget {
  final Skils_Model model;
  const AppPortfolioComponent({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image_GIF(model: model),
                    SizedBox(width: 30),
                    Descriptor(model: model),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ...model.descriptor
                        .split("\n")
                        .map((x) => TextComponent(text: x)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Image_GIF extends StatelessWidget {
  final Skils_Model model;
  const Image_GIF({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
          ),
          child: Image.asset(model.gif_path, width: 350, gaplessPlayback: true),
        ),
      ],
    );
  }
}

class Descriptor extends StatelessWidget {
  final Skils_Model model;
  const Descriptor({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [Title(model: model), Content(model: model)],
    );
  }
}

class Content extends StatelessWidget {
  final Skils_Model model;
  const Content({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children:
              model.Language.expandIndexed(
                (i, x) => [
                  TextComponent(text: x, fontSize: 26),
                  SizedBox(width: 15),
                ],
              ).toList(),
        ),
        SizedBox(height: 20),
        Row(
          children:
              model.Framwork.expandIndexed(
                (i, x) => [
                  TextComponent(text: x, fontSize: 26),
                  SizedBox(width: 15),
                ],
              ).toList(),
        ),
        SizedBox(height: 20),
        Row(
          children:
              model.platform
                  .expandIndexed(
                    (i, x) => [
                      TextComponent(text: x, fontSize: 26),
                      SizedBox(width: 15),
                    ],
                  )
                  .toList(),
        ),
        SizedBox(height: 20),
        TextComponent(text: model.personnel.toString() + "명", fontSize: 26),
        SizedBox(height: 20),
        Row(
          children:
              model.git_link
                  .expandIndexed(
                    (i, x) => [
                      LinkTextComponent(text: "링크", link: x, fontSize: 26),
                      SizedBox(width: 15),
                    ],
                  )
                  .toList(),
        ),

        SizedBox(height: 20),
        if (model.package.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                model.package
                    .expandIndexed(
                      (i, x) => [
                        TextComponent(text: x, fontSize: 24),
                        SizedBox(height: 15),
                      ],
                    )
                    .toList(),
          ),
      ],
    );
  }
}

class Title extends StatelessWidget {
  final Skils_Model model;
  const Title({super.key, required this.model});
  static const title_list = [
    "Language",
    "Framework",
    "Platform",
    "Personnel",
    "Github",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...title_list
              .expandIndexed(
                (i, x) => [
                  TextComponent(text: x + ":", fontSize: 26),
                  SizedBox(height: 20),
                ],
              )
              .toList(),
          if (model.package.isNotEmpty)
            TextComponent(text: "Package:", fontSize: 26),
        ],
      ),
    );
  }
}
