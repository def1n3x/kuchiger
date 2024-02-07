import 'package:flutter/material.dart';

class InfoWidgetMobile extends StatelessWidget {
  final String title;
  final String description;
  final String? imagePath; // Изменяем тип на nullable String

  const InfoWidgetMobile({
    Key? key,
    required this.title,
    required this.description,
    this.imagePath, // Изменяем аргумент на nullable
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          if (imagePath != null) // Проверяем, есть ли путь к изображению
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath!,
                width: 361,
                height: 190,
                fit: BoxFit.cover,
              ),
            ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
