import 'package:flutter/material.dart';

class SmallLineWidgetMobile extends StatelessWidget {
  const SmallLineWidgetMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 200,
      color: const Color.fromRGBO(22, 26, 30, 1),
      // margin: const EdgeInsets.only(top: 16),
    );
  }
}
