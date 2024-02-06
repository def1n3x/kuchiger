import 'package:flutter/material.dart';

class TransferInfoWidgetMobile extends StatelessWidget {
  const TransferInfoWidgetMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        const Text(
          'Трансфер',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          'Отправляйтесь в увлекательное приключение в Кучегэр с нашим трансфером!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 20),
        _buildTransferInfo(
          'assets/images/marshrut.png',
          'Маршрут: Маршрут проходит через Усолье-Сибирское, Ангарск и Иркутск. Мы также готовы встретить вас, если вы из другого города. Другие города по договоренности.',
        ),
        _buildTransferInfo(
          'assets/images/calendar-zaezd.png',
          'Даты заезда: Присоединяйтесь к нам 1, 12 или 21 числа каждого месяца с мая по ноябрь.',
        ),
        _buildTransferInfo(
          'assets/images/calendar-viezd.png',
          'Даты выезда: Возвращение запланировано на 7, 18 или 27 число с нашего курорта Кучегэр.',
        ),
        _buildTransferInfo(
          'assets/images/oplata.png',
          'Стоимость: Всего за 11000 рублей на человека! И чтобы сделать ваш выбор еще проще, предоставляем уникальную возможность оформить предоплату всего 1000 рублей на человека.',
        ),
        const SizedBox(height: 10),
        const Text(
          'Не упустите шанс на незабываемое приключение в Кучегэре! Забронируйте свое место прямо сейчас!',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildTransferInfo(String imagePath, String text) {
    final String label = text.split(': ').first + ': ';
    final String content = text.split(':').sublist(1).join(':').trim();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 35,
              height: 35,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
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
          ],
        ),
      ),
    );
  }
}
