import 'package:flutter/material.dart';

class AppBarDesktop extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          return SafeArea(
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/homedesktop'),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 168,
                      ),
                      child: Text(
                        'Главная',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacementNamed(
                        context, '/roomsdesktop'),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 45),
                      child: Text(
                        'Номера',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacementNamed(
                        context, '/contactsdesktop'),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 45),
                      child: Text(
                        'Контакты',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacementNamed(
                        context, '/transferdesktop'),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 45),
                      child: Text(
                        'Трансфер',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      toolbarHeight: 55,
      backgroundColor: const Color.fromRGBO(22, 26, 30, 1),
      title: Container(
        padding: const EdgeInsets.symmetric(horizontal: 168),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '8-908-591-41-49',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
