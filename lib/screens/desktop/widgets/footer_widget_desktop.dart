import 'package:flutter/material.dart';

class FooterWidgetDesktop extends StatelessWidget {
  const FooterWidgetDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      color: Colors.black,
      child: const Center(
        child: Text(
          '© Kucheger',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
