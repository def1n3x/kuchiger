import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double widthContainer;
  final double heightContainer;
  final String title;
  final String description;
  final String imagePath;

  const CustomContainer({
    Key? key,
    required this.widthContainer,
    required this.heightContainer,
    required this.title,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthContainer,
      height: heightContainer,
      margin: const EdgeInsets.symmetric(horizontal: 262, vertical: 28),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(22, 26, 30, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 26),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    imagePath,
                    width: 495,
                    height: 280,
                  ),
                ],
              ),
              const Column(
                children: [
                  Text(
                    'Текстовое описание',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Здесь можно добавить текстовое описание изображения.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
