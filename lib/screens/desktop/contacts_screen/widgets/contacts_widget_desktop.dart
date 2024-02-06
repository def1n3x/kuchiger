import 'package:flutter/material.dart';

class ContactsWidgetDesktop extends StatelessWidget {
  const ContactsWidgetDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(368, 28, 368, 35),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Контакты",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 48,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20),
          ContactItem(
              iconPath: 'assets/images/phone-icon.png',
              text: '8-908-591-41-49'),
          ContactItem(
              iconPath: 'assets/images/mail-icon.png',
              text: 'kucheger02@gmail.com'),
          ContactItem(
              iconPath: 'assets/images/whatsapp-icon.png',
              text: '8-908-591-41-49'),
          ContactItem(
              iconPath: 'assets/images/telegram-icon.png', text: '@kucheger02'),
          ContactItem(
            iconPath: 'assets/images/map-icon.png',
            text:
                '671632, Россия, Республика Бурятия,\n Курумканский район, улус Кучегэр',
          ),
        ],
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final String iconPath;
  final String text;

  const ContactItem({super.key, required this.iconPath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: 50,
            height: 50,
          ),
          const SizedBox(width: 24),
          Flexible(
            child: Text(
              text,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
