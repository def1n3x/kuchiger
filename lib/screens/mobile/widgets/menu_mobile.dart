import 'package:flutter/material.dart';

class MenuWidgetMobile extends StatelessWidget {
  const MenuWidgetMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: const Color.fromRGBO(22, 26, 30, 1),
        width: 150,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/homemobile'),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Главная',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/roomsmobile'),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Номера',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/contactsmobile'),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Контакты',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/transfermobile'),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Трансфер',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
