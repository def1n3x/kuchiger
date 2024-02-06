import 'package:flutter/material.dart';
import 'package:kuchiger/screens/desktop/contacts_screen/contacts_screen_desktop.dart';
import 'package:kuchiger/screens/desktop/home_screen/home_screen_desktop.dart';
import 'package:kuchiger/screens/desktop/transfer_screen/transfer_screen_desktop.dart';
import 'package:kuchiger/screens/mobile/contacts_screen/contacts_screen_mobile.dart';
import 'package:kuchiger/screens/mobile/home_screen/home_screen_mobile.dart';
import 'package:kuchiger/screens/mobile/room_screen/room_screen_mobile.dart';
import 'package:kuchiger/screens/mobile/transfer_screen/transfer_screen_mobile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Использование Builder для создания подходящего контекста
    return MaterialApp(
      routes: {
        '/homemobile': (context) => const HomeScreenMobile(),
        '/roomsmobile': (context) => const RoomScreenMobile(),
        '/contactsmobile': (context) => const ContactsScreenMobile(),
        '/transfermobile': (context) => const TransferScreenMobile(),
        '/homedesktop': (context) => const HomeScreenDesktop(),
        // '/roomsdesktop': (context) => const RoomScreenDesktop(),
        '/contactsdesktop': (context) => const ContactsScreenDesktop(),
        '/transferdesktop': (context) => const TransferScreenDesktop(),
      },
      home: Builder(
        builder: (BuildContext context) {
          // Получение размеров экрана
          final Size size = MediaQuery.of(context).size;
          // Определение, является ли устройство мобильным
          bool isMobile =
              size.width < 800; // или другой порог для мобильных устройств
          // Выбор домашнего экрана в зависимости от платформы
          Widget home = isMobile
              ? const HomeScreenMobile()
              : const HomeScreenDesktop(); // было isMobile ? const HomeScreenMobile() : const HomeScreenDesktop();

          return home;
        },
      ),
    );
  }
}
