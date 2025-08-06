import 'package:flutter/material.dart';

import '../common/data/data.dart';

class ImageComponent extends StatelessWidget {
  final String path;
  final double width;
  final double padding;
  const ImageComponent({
    super.key,
    required this.path,
    this.padding = 8,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Image.asset(
        path,
        width: width,
        fit: BoxFit.cover,
        gaplessPlayback: true,
      ),
    );
  }
}
