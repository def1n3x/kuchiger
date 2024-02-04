import 'package:flutter/material.dart';

class FooterWidgetMobile extends StatelessWidget {
  const FooterWidgetMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      color: Colors.black,
      child: const Center(
        child: Text(
          '© Kuchiger',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
