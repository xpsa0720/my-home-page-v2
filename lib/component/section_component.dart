import 'package:flutter/material.dart';

class SectionComponent extends StatelessWidget {
  final GlobalKey globalKey;
  final double? height;
  final Widget child;
  final Color? backgroundColor;

  const SectionComponent({
    super.key,
    this.height,
    required this.child,
    this.backgroundColor,
    required this.globalKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: globalKey,
      height: height,
      child: child,
      color: backgroundColor ?? Colors.transparent,
    );
  }
}
