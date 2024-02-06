import 'package:flutter/material.dart';
import 'package:kuchiger/screens/mobile/room_screen/room_screen_mobile.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class AppBarMobile extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      toolbarHeight: 35,
      backgroundColor: const Color.fromRGBO(22, 26, 30, 1),
      title: const Row(
        children: [
          Spacer(),
          Text(
            '8-908-591-41-49',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(35);
}
