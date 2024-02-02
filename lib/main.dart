import 'package:flutter/material.dart';
import 'package:kuchiger/screens/desktop/home_screen.dart';
import 'package:kuchiger/screens/mobile/contacts_screen/contacts_screen.dart';
import 'package:kuchiger/screens/mobile/home_screen/home_screen.dart';
import 'package:kuchiger/screens/mobile/room_screen/room_screen.dart';
import 'package:kuchiger/screens/mobile/transfer_screen/transfer_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Использование Builder для создания подходящего контекста
    return MaterialApp(home: ContactsScreenMobile()
        // Builder(
        //   builder: (BuildContext context) {
        //     // Получение размеров экрана
        //     final Size size = MediaQuery.of(context).size;
        //     // Определение, является ли устройство мобильным
        //     bool isMobile =
        //         size.width < 800; // или другой порог для мобильных устройств
        //     // Выбор домашнего экрана в зависимости от платформы
        //     Widget home =
        //         isMobile ? const HomeScreenMobile() : const HomeScreenDesktop();

        //     return home;
        //   },
        // ),
        );
  }
}
