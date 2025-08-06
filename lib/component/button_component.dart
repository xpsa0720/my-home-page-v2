import 'package:flutter/material.dart';
import 'package:my_page2/component/text_component.dart';

class ButtonComponent extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  const ButtonComponent({super.key, required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(onTap: onTap, child: child),
    );
  }
}
