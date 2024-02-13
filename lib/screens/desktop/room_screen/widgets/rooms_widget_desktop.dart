import 'package:flutter/material.dart';
import 'package:kuchiger/screens/desktop/room_screen/widgets/images_carousel_slider.dart';

class RoomsWidgetDesktop extends StatelessWidget {
  final String title;
  final List<String> images;
  // final String imagePath;
  final String description;
  final String price;
  final List<String> image;
  final List<String> imageDescription;

  const RoomsWidgetDesktop({
    required this.title,
    required this.images,
    // required this.imagePath,
    required this.description,
    required this.price,
    required this.image,
    required this.imageDescription,
    Key? key,
  }) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 28, left: 262, right: 262, bottom: 28),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: double.infinity,
          maxHeight: double.infinity,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromRGBO(22, 26, 30, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                description,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ImagesCarouselSlider(images: images),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(10),
                  //   child: Image.asset(
                  //     imagePath,
                  //     width: 495,
                  //     height: 280,
                  //     fit: BoxFit.fill,
                  //   ),
                  // ),
                  const SizedBox(width: 32),
                  Expanded(
                    child: Column(
                      children: [
                        ...List.generate(
                          image.length,
                          (index) => _buildImageWithText(
                              image[index], imageDescription[index]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 200,
                            height: 70,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(226, 226, 226, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                price,
                                style: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.black,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageWithText(String imageName, String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Image.asset(
            'assets/images/$imageName.png',
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
