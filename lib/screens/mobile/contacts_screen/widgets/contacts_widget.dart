import 'package:flutter/material.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text(
            'Контакты',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 25),
        _buildItem('assets/images/phone-icon.png', '8-908-591-41-49'),
        _buildItem('assets/images/mail-icon.png', 'kucheger02@gmail.com'),
        _buildItem('assets/images/whatsapp-icon.png', '8-908-591-41-49'),
        _buildItem('assets/images/telegram-icon.png', '@kucheger02'),
        _buildItem(
          'assets/images/map-icon.png',
          '671632, Россия, Республика Бурятия, Курумканский район, улус Кучигер',
        ),
      ],
    );
  }

  Widget _buildItem(String imagePath, String descriprion) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 30,
          height: 30,
        ),
        const SizedBox(height: 26),
        Text(
          descriprion,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 26),
      ],
    );
  }
}
