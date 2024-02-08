import 'package:flutter/material.dart';

class TitleWidgetDesktop extends StatelessWidget {
  const TitleWidgetDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 28, left: 168, right: 168),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Уютные номера',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 48,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
