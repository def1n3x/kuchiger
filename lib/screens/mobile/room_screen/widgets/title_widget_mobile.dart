import 'package:flutter/material.dart';

class TitleWidgetMobile extends StatelessWidget {
  const TitleWidgetMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Уютные номера',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
