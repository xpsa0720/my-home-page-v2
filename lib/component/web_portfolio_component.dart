import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:my_page2/component/text_component.dart';

import '../common/data/data.dart';
import '../model/skill_model.dart';
import 'link_text_component.dart';

class WebPortfolioComponent extends StatelessWidget {
  final Skils_Model model;
  const WebPortfolioComponent({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image_GIF(
              title: model.title,
              gif_path: model.gif_path,

              isMaking: model.isMaking,
              screenWidth: ScreenWidth(context),
            ),
            SizedBox(height: 60),
            SkillDescriptor(model: model), //
            SizedBox(height: 60),
            Descriptor(
              descriptor: model.descriptor,
              Language: model.Language,
              Language_skil: model.Language_skil,
            ),

            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

class Image_GIF extends StatelessWidget {
  final String gif_path;
  final double screenWidth;
  final String title;
  final bool isMaking;
  const Image_GIF({
    super.key,
    required this.gif_path,
    required this.screenWidth,
    required this.title,
    required this.isMaking,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
          ),
          child: Image.asset(
            gif_path,
            width: ScreenWidth(context) / 2,
            fit: BoxFit.cover,
            gaplessPlayback: true,
          ),
        ),
      ],
    );
  }
}

class Descriptor extends StatelessWidget {
  final List<String> Language;
  final List<String> Language_skil;
  final String descriptor;
  const Descriptor({
    super.key,
    required this.Language,
    required this.Language_skil,
    required this.descriptor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: TextComponent(
        text: descriptor,
        wrapAlignment: WrapAlignment.center,
      ),
    );
  }
}

class SkillDescriptor extends StatelessWidget {
  final Skils_Model model;
  const SkillDescriptor({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
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
                      if (i != model.git_link.length - 1)
                        TextComponent(text: ",", fontSize: 26),
                      if (i != model.git_link.length - 1) SizedBox(width: 15),
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
