import 'package:flutter/material.dart';

class InfoWidgetDesktop extends StatelessWidget {
  final String title;
  final String description;
  final String? imagePath; // Изменяем тип на nullable String

  const InfoWidgetDesktop({
    Key? key,
    required this.title,
    required this.description,
    this.imagePath, // Изменяем аргумент на nullable
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 28, left: 168, right: 168, bottom: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 48,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          if (imagePath != null) // Проверяем, есть ли путь к изображению
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath!,
                width: 1005,
                height: 530,
                fit: BoxFit.cover,
              ),
            ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 32,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
