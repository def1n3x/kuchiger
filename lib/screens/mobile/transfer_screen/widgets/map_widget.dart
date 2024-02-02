import 'package:flutter/material.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'Наш транспорт',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 16),
          MapImage(),
          SizedBox(height: 16),
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
      width: 361,
      height: 261,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/images/map.png',
          width: 361,
          height: 261,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
