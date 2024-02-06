import 'package:flutter/material.dart';

class CarWidgetDesktop extends StatelessWidget {
  const CarWidgetDesktop({super.key});

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
              'Наш транспорт',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 44,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 32),
          TransferImage(),
        ],
      ),
    );
  }
}

class TransferImage extends StatelessWidget {
  const TransferImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 916,
      height: 558,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/car.jpg',
          width: 916,
          height: 558,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
