import 'package:flutter/material.dart';

import '../../../component/text_component.dart';

class DetailComponent extends StatelessWidget {
  final Widget child;
  final String title;
  const DetailComponent({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      child: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: TextComponent(text: title, fontSize: 40),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(height: 1, color: Colors.black38),
              ),
              child,
            ],
          ),
        ],
      ),
    );
  }
}
