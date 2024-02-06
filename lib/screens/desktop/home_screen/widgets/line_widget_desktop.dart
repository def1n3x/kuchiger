import 'package:flutter/material.dart';

class LineWidgetDesktop extends StatelessWidget {
  const LineWidgetDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: const Color.fromRGBO(22, 26, 30, 1),
      margin: const EdgeInsets.symmetric(horizontal: 250),
    );
  }
}
