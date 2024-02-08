import 'package:flutter/material.dart';

class BigLineWidgetDesktop extends StatelessWidget {
  const BigLineWidgetDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 1104,
      color: const Color.fromRGBO(22, 26, 30, 1),
      margin: const EdgeInsets.only(top: 8),
    );
  }
}
