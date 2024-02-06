import 'package:flutter/material.dart';

class MenuWidgetDesktop extends StatelessWidget {
  const MenuWidgetDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Color.fromRGBO(22, 26, 30, 1),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/homemobile'),
              child: Text('Главная'),
              ),
               GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/roomsmobile'),
              child: Text('Номера'),
              ),
               GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/contactsmobile'),
              child: Text('Контакты'),
              ),
               GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/transfermobile'),
              child: Text('Трансфер'),
              ),
              ],
              ),
      ),
    );
  }
}