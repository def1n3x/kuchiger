import 'package:flutter/material.dart';

class KuchigerMainWidget extends StatelessWidget {
  const KuchigerMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/main.png',
            fit: BoxFit.cover,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Кучигэр\n«Гостевой дом 38»',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'благоустроенно и круглогодично',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
