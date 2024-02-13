import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kuchiger/blocs/room_bloc.dart';
import 'package:kuchiger/screens/desktop/room_screen/widgets/image_rounded_container.dart';

class ImagesCarouselSlider extends StatelessWidget {
  const ImagesCarouselSlider({
    super.key,
    required this.images,
  });

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CarouselSlider(
        options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) =>
                context.read<RoomBloc>().add(PageIndexChangeEvent(index))),
        items: [
          for (int i = 0; i < images.length; i++)
            ImageRoundedContainer(
              image: images[i],
            ),
        ],
      ),
    );
  }
}
