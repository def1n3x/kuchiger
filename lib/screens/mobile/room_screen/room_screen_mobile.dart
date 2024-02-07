import 'package:flutter/material.dart';
import 'package:kuchiger/screens/mobile/room_screen/widgets/big_line_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/room_screen/widgets/info_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/room_screen/widgets/rooms_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/room_screen/widgets/small_line_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/room_screen/widgets/title_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/footer_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/app_bar_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/main_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/menu_mobile.dart';

class RoomScreenMobile extends StatelessWidget {
  const RoomScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarMobile(),
      drawer: MenuWidgetMobile(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainWidgetMobile(),
            // Информация
            InfoWidgetMobile(
              title: 'Корпус №10',
              imagePath: null,
              description:
                  'Откройте для себя атмосферу нашего уютного корпуса, открытого с апреля по октябрь, и насладитесь неповторимым отдыхом в окружении природы. Просторные номера, идеальное расположение и внимательное обслуживание создадут идеальные условия для вашего уединенного отпуска.',
            ),

            // Линия
            SmallLineWidgetMobile(),

            // Заголовок "Уютные номера"
            TitleWidgetMobile(),

            // Комната 1-4
            RoomsWidgetMobile(
              widthContainer: 361,
              heightContainer: 345,
              title: 'Номера 1 - 4',
              imagePath: 'assets/images/komnata-1.png',
              description: 'Двухместный номер',
              price: '1300 р/сутки',
              image: [
                'bed15x15',
                'tv15x15',
                'toilet15x15',
                'fridge15x15',
              ],
              imageDescription: [
                '2 кровати',
                'Телевизор',
                'Общий туалет',
                'Общая кухня',
              ],
            ),

            // Линия
            SmallLineWidgetMobile(),

            // Комната 5-6
            RoomsWidgetMobile(
              widthContainer: 361,
              heightContainer: 345,
              title: 'Номера 5 - 6',
              imagePath: 'assets/images/komnata-2.png',
              description: 'Трехместный номер',
              price: '1300 р/сутки',
              image: [
                'bed15x15',
                'tv15x15',
                'toilet15x15',
                'fridge15x15',
              ],
              imageDescription: [
                '3 кровати',
                'Телевизор',
                'Общий туалет',
                'Общая кухня',
              ],
            ),

            // Линия
            SmallLineWidgetMobile(),

            // Комната 7-8
            RoomsWidgetMobile(
              widthContainer: 361,
              heightContainer: 345,
              title: 'Номера 7 - 8',
              imagePath: 'assets/images/komnata-3.png',
              description: 'Четырехместный номер',
              price: '1300 р/сутки',
              image: [
                'bed15x15',
                'tv15x15',
                'toilet15x15',
                'fridge15x15',
              ],
              imageDescription: [
                '4 кровати',
                'Телевизор',
                'Общий туалет',
                'Общая кухня',
              ],
            ),

            // Линия
            BigLineWidgetMobile(),

            // Информация
            InfoWidgetMobile(
              title: 'Корпус №11',
              imagePath: 'assets/images/domik.png',
              description:
                  'Уютный круглогодичный корпус предоставляет идеальное пространство для отпуска и релаксации. Расположенный в живописном уголке природы, он предлагает спокойную атмосферу, оторванную от городской суеты.',
            ),

            // Линия
            SmallLineWidgetMobile(),

            // Заголовок "Уютные номера"
            TitleWidgetMobile(),

            // Комната 3-6
            RoomsWidgetMobile(
              widthContainer: 361,
              heightContainer: 386,
              title: 'Номера 3 - 6',
              imagePath: 'assets/images/komnata-1.png',
              description: 'Двухместный благоустроенный номер\n(без душа)',
              price: '3200 р/сутки',
              image: [
                'bed15x15',
                'tv15x15',
                'toilet15x15',
                'sink15x15',
                'fridge15x15',
              ],
              imageDescription: [
                '2 кровати',
                'Телевизор',
                'Туалет',
                'Раковина',
                'Кухня отдельно',
              ],
            ),

            // Линия
            SmallLineWidgetMobile(),

            // Комната 8
            RoomsWidgetMobile(
              widthContainer: 361,
              heightContainer: 368,
              title: 'Номер 8',
              imagePath: 'assets/images/komnata-2.png',
              description: 'Семейный номер',
              price: '3200 р/сутки',
              image: [
                'bed15x15',
                'tv15x15',
                'toilet15x15',
                'shower15x15',
                'fridge15x15',
              ],
              imageDescription: [
                'Семейная кровать',
                'Телевизор',
                'Туалет',
                'Душ',
                'Кухня',
              ],
            ),

            // Линия
            SmallLineWidgetMobile(),

            // Комната 9-10
            RoomsWidgetMobile(
              widthContainer: 361,
              heightContainer: 368,
              title: 'Номера 9 - 10',
              imagePath: 'assets/images/komnata-3.png',
              description: 'Трехместный номер',
              price: '4800 р/сутки',
              image: [
                'bed15x15',
                'tv15x15',
                'toilet15x15',
                'shower15x15',
                'fridge15x15',
              ],
              imageDescription: [
                '3 кровати',
                'Телевизор',
                'Туалет',
                'Душ',
                'Кухня',
              ],
            ),
            FooterWidgetMobile(),
          ],
        ),
      ),
    );
  }
}


/*RoomsWidgetMobile(
              widthContainer: 361,
              heightContainer: 345,
              title: 'Номера 1 - 4',
              description: 'Двухместный номер',
              price: '3200 р/сутки',
              image: [
                'bed15x15',
                'tv15x15',
                'toilet15x15',
                'fridge15x15',
              ],
              imageDescription: [
                '2 кровати',
                'Телевизор',
                'Общий туалет',
                'Общая кухня',
              ],
            ),*/