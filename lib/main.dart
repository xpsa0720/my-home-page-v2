import 'package:flutter/material.dart';
import 'package:my_page2/view/home_screen.dart';

void main() {
  // debugPrintRebuildDirtyWidgets = true;
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: "PyeojinGothic"),
      debugShowCheckedModeBanner: false,
      home: _App(),
    ),
  );
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
