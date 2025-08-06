import 'package:flutter/material.dart';
import 'package:my_page2/component/text_component.dart';
import 'package:my_page2/view/section/head_section.dart';
import 'package:my_page2/view/section/introduce.dart';
import 'package:my_page2/view/section/portfolio.dart';
import 'package:my_page2/view/section/skill.dart';

import '../component/button_component.dart';
import 'package:web/web.dart' as web;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _controller;
  bool isTop = true;

  double head_size = 0;
  double introduce_size = 0;
  double skill_size = 0;
  double portfolio_size = 0;

  late GlobalKey head_key;
  late GlobalKey introduce_key;
  late GlobalKey skill_key;
  late GlobalKey portfolio_key;
  bool _measured = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    web.document.title = "엄용진 - 포트폴리오";
    _controller = ScrollController();
    _controller.addListener(() {
      final top = _controller.offset == 0;
      if (top != isTop) {
        setState(() {
          isTop = top;
        });
      }
    });
    head_key = GlobalKey();
    introduce_key = GlobalKey();
    skill_key = GlobalKey();
    portfolio_key = GlobalKey();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_measured) return;
      final headContext = head_key.currentContext;
      final introduceContext = introduce_key.currentContext;
      final skillContext = skill_key.currentContext;
      final portfolioContext = portfolio_key.currentContext;

      if (headContext != null &&
          introduceContext != null &&
          skillContext != null &&
          portfolioContext != null) {
        setState(() {
          head_size = headContext.size!.height;
          introduce_size = introduceContext.size!.height;
          skill_size = skillContext.size!.height;
          portfolio_size = portfolioContext.size!.height;
          _measured = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            controller: _controller,
            children: [
              HeadSection(globalKey: head_key),
              Introduce(globalKey: introduce_key),
              Skill(globalKey: skill_key),
              Portfolio(globalKey: portfolio_key),
            ],
          ),
          RepaintBoundary(
            child: TabBar(
              isTop: isTop,
              controller: _controller,
              head_size: head_size,
              introduce_size: introduce_size,
              portfolio_size: portfolio_size,
              skill_size: skill_size,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}

class TabBar extends StatelessWidget {
  final bool isTop;
  final ScrollController controller;
  final double head_size;
  final double introduce_size;
  final double skill_size;
  final double portfolio_size;
  const TabBar({
    super.key,
    required this.isTop,
    required this.controller,
    required this.head_size,
    required this.introduce_size,
    required this.skill_size,
    required this.portfolio_size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: isTop ? Colors.transparent : Colors.white,
        boxShadow:
            isTop
                ? null
                : [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 1),
                    blurRadius: 5,
                  ),
                ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TabButton(
            onTap: () {
              controller.animateTo(
                0,
                duration: Duration(seconds: 1),
                curve: Curves.ease,
              );
            },
            isTop: isTop,
            text: "Home",
          ),
          TabButton(
            onTap: () {
              controller.animateTo(
                head_size - 50,
                duration: Duration(seconds: 1),
                curve: Curves.ease,
              );
            },
            isTop: isTop,
            text: "Profile",
          ),
          TabButton(
            onTap: () {
              controller.animateTo(
                head_size + introduce_size - 50,
                duration: Duration(seconds: 1),
                curve: Curves.ease,
              );
            },
            isTop: isTop,
            text: "Skills",
          ),
          TabButton(
            onTap: () {
              controller.animateTo(
                head_size + introduce_size + skill_size - 50,
                duration: Duration(seconds: 1),
                curve: Curves.ease,
              );
            },
            isTop: isTop,
            text: "Portfolio",
          ),
        ],
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isTop;
  final String text;
  const TabButton({
    super.key,
    required this.onTap,
    required this.isTop,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ButtonComponent(
        onTap: onTap,
        child: TextComponent(
          text: text,
          fontFamily: "GoogleSansCode",
          fontWeight: FontWeight.w300,
          fontSize: 20,
          color: isTop ? Colors.white : Colors.black87,
        ),
      ),
    );
  }
}
