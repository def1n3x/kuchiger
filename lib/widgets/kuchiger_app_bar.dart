import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class KuchigerAppbar extends StatelessWidget implements PreferredSizeWidget {
  const KuchigerAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 35,
      backgroundColor: const Color.fromRGBO(22, 26, 30, 1),
      leading: Image.asset(
        'assets/images/menu.png',
        width: 20,
        height: 20,
      ),
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
