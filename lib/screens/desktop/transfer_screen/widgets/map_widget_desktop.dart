import 'package:flutter/material.dart';

class MapWidgetDesktop extends StatelessWidget {
  const MapWidgetDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 262),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 58),
            child: Text(
              'Маршрут на карте',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 44,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 32),
          MapImage(),
          SizedBox(height: 28),
        ],
      ),
    );
  }
}

class MapImage extends StatelessWidget {
  const MapImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 916,
      height: 662,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/karta73472.jpg',
          width: 916,
          height: 662,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
