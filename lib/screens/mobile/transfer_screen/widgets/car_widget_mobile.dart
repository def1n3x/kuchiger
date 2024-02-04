import 'package:flutter/material.dart';

class CarWidgetMobile extends StatelessWidget {
  const CarWidgetMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 25),
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
      width: 361,
      height: 220,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/images/car.png',
          width: 361,
          height: 220,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
