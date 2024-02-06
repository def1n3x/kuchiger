import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 168),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 28),
          const Text(
            'Трансфер',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 48,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 28),
          const Text(
            'Отправляйтесь в увлекательное приключение\n в Кучигэр с нашим трансфером!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          _buildTransferInfo(
            'assets/images/marshrut.png',
            'Маршрут: Маршрут проходит через\nУсолье-Сибирское, Ангарск и Иркутск.\nМы также готовы встретить вас, если вы\nиз другого города. Другие города по\nдоговоренности.',
          ),
          _buildTransferInfo(
            'assets/images/calendar-zaezd.png',
            'Даты заезда: Присоединяйтесь к нам\n1, 12 или 21 числа каждого месяца с\nмая по ноябрь.',
            alignRight: true,
          ),
          _buildTransferInfo(
            'assets/images/calendar-viezd.png',
            'Даты выезда: Возвращение\nзапланировано на 7, 18 или 27\nчисло с нашего курорта Кучигер.',
          ),
          _buildTransferInfo(
            'assets/images/oplata.png',
            'Стоимость: Всего за 11000 рублей на\nчеловека! И чтобы сделать ваш выбор\nеще проще, предоставляем уникальную\nвозможность оформить предоплату\nвсего 1000 рублей на человека.',
            alignRight: true,
          ),
          const SizedBox(height: 44),
          const Text(
            'Не упустите шанс на незабываемое\n приключение в Кучигере! Забронируйте свое\n место прямо сейчас!',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildTransferInfo(String imagePath, String text,
      {bool alignRight = false}) {
    final String label = text.split(': ').first + ': ';
    final String content = text.split(':').sublist(1).join(':').trim();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 168),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (!alignRight)
              Image.asset(
                imagePath,
                width: 62,
                height: 62,
              ),
            if (!alignRight) const SizedBox(width: 28),
            Expanded(
              child: Align(
                alignment:
                    alignRight ? Alignment.centerRight : Alignment.centerLeft,
                child: RichText(
                  textAlign: alignRight ? TextAlign.end : TextAlign.start,
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: label,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(text: content),
                    ],
                  ),
                ),
              ),
            ),
            if (alignRight) const SizedBox(width: 28),
            if (alignRight)
              Image.asset(
                imagePath,
                width: 62,
                height: 62,
              ),
          ],
        ),
      ),
    );
  }
}
