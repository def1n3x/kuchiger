import 'package:flutter/material.dart';

class GeneralInfoWidgetDesktop extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final Size imageSize;
  final bool isTextFirst;
  final BorderRadius imageBorderRadius;
  final List<BoxShadow> boxShadow;

  const GeneralInfoWidgetDesktop({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.imageSize,
    required this.isTextFirst,
    required this.imageBorderRadius,
    required this.boxShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(168, 28, 168, 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Column 1 or 2 based on isTextFirst
          isTextFirst ? _buildTextColumn() : _buildImageColumn(),
          const SizedBox(width: 24),
          // Column 2 or 1 based on isTextFirst
          isTextFirst ? _buildImageColumn() : _buildTextColumn(),
        ],
      ),
    );
  }

  // Method to build the text column
  Widget _buildTextColumn() {
    return Expanded(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 48,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build the image column
  Widget _buildImageColumn() {
    return Flexible(
      flex: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: imageBorderRadius,
          boxShadow: boxShadow,
        ),
        child: ClipRRect(
          borderRadius: imageBorderRadius,
          child: SizedBox(
            width: imageSize.width,
            height: imageSize.height,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
