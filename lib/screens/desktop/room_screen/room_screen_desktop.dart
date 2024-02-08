import 'package:flutter/material.dart';
import 'package:kuchiger/screens/desktop/room_screen/widgets/big_line_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/room_screen/widgets/info_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/room_screen/widgets/rooms_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/room_screen/widgets/small_line_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/room_screen/widgets/te.dart';
import 'package:kuchiger/screens/desktop/room_screen/widgets/test.dart';
import 'package:kuchiger/screens/desktop/room_screen/widgets/title_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/widgets/app_bar_desktop.dart';
import 'package:kuchiger/screens/desktop/widgets/footer_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/widgets/main_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/widgets/menu_desktop.dart';

class RoomScreenDesktop extends StatelessWidget {
  const RoomScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarDesktop(),
      drawer: MenuWidgetDesktop(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainWidgetDesktop(),
            TE(
              title: 'Номера 1 - 4',
              imagePath: 'assets/images/komnata-1.png',
              description: 'Двухместный номер',
              price: '1300 р/сутки',
              image: [
                'bed24x24',
                'tv24x24',
                'toilet24x24',
                'fridge24x24',
              ],
              imageDescription: [
                '2 кровати',
                'Телевизор',
                'Общий туалет',
                'Общая кухня',
              ],
            ),

            /*
            // Информация
            InfoWidgetDesktop(
              title: 'Корпус №10',
              imagePath: null,
              description:
                  'Откройте для себя атмосферу нашего уютного корпуса, открытого с апреля по октябрь, и насладитесь неповторимым отдыхом в окружении природы. Просторные номера, идеальное расположение и внимательное обслуживание создадут идеальные условия для вашего уединенного отпуска.',
            ),

            // Линия
            SmallLineWidgetDesktop(),

            // Заголовок "Уютные номера"
            TitleWidgetDesktop(),

            // Комната 1-4
            RoomsWidgetDesktop(
              title: 'Номера 1 - 4',
              imagePath: 'assets/images/komnata-1.png',
              description: 'Двухместный номер',
              price: '1300 р/сутки',
              image: [
                'bed24x24',
                'tv24x24',
                'toilet24x24',
                'fridge24x24',
              ],
              imageDescription: [
                '2 кровати',
                'Телевизор',
                'Общий туалет',
                'Общая кухня',
              ],
            ),

            // Комната 5-6
            RoomsWidgetDesktop(
              title: 'Номера 5 - 6',
              imagePath: 'assets/images/komnata-2.png',
              description: 'Трехместный номер',
              price: '1300 р/сутки',
              image: [
                'bed24x24',
                'tv24x24',
                'toilet24x24',
                'fridge24x24',
              ],
              imageDescription: [
                '3 кровати',
                'Телевизор',
                'Общий туалет',
                'Общая кухня',
              ],
            ),

            // Комната 7-8
            RoomsWidgetDesktop(
              title: 'Номера 7 - 8',
              imagePath: 'assets/images/komnata-3.png',
              description: 'Четырехместный номер',
              price: '1300 р/сутки',
              image: [
                'bed24x24',
                'tv24x24',
                'toilet24x24',
                'fridge24x24',
              ],
              imageDescription: [
                '4 кровати',
                'Телевизор',
                'Общий туалет',
                'Общая кухня',
              ],
            ),

            // Линия
            BigLineWidgetDesktop(),

            // Информация
            InfoWidgetDesktop(
              title: 'Корпус №11',
              imagePath: 'assets/images/domik.png',
              description:
                  'Уютный круглогодичный корпус предоставляет идеальное пространство для отпуска и релаксации. Расположенный в живописном уголке природы, он предлагает спокойную атмосферу, оторванную от городской суеты.',
            ),

            // Линия
            SmallLineWidgetDesktop(),

            // Заголовок "Уютные номера"
            TitleWidgetDesktop(),

            // Комната 3-6
            RoomsWidgetDesktop(
              title: 'Номера 3 - 6',
              imagePath: 'assets/images/komnata-1.png',
              description: 'Двухместный благоустроенный номер\n(без душа)',
              price: '3200 р/сутки',
              image: [
                'bed24x24',
                'tv24x24',
                'toilet24x24',
                'sink24x24',
                'fridge24x24',
              ],
              imageDescription: [
                '2 кровати',
                'Телевизор',
                'Туалет',
                'Раковина',
                'Кухня отдельно',
              ],
            ),

            // Комната 8
            RoomsWidgetDesktop(
              title: 'Номер 8',
              imagePath: 'assets/images/komnata-2.png',
              description: 'Семейный номер',
              price: '3200 р/сутки',
              image: [
                'bed24x24',
                'tv24x24',
                'toilet24x24',
                'shower24x24',
                'fridge24x24',
              ],
              imageDescription: [
                'Семейная кровать',
                'Телевизор',
                'Туалет',
                'Душ',
                'Кухня',
              ],
            ),

            // Комната 9-10
            RoomsWidgetDesktop(
              title: 'Номера 9 - 10',
              imagePath: 'assets/images/komnata-3.png',
              description: 'Трехместный номер',
              price: '4800 р/сутки',
              image: [
                'bed24x24',
                'tv24x24',
                'toilet24x24',
                'shower24x24',
                'fridge24x24',
              ],
              imageDescription: [
                '3 кровати',
                'Телевизор',
                'Туалет',
                'Душ',
                'Кухня',
              ],
            ),*/
            FooterWidgetDesktop(),
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
                'bed24x24',
                'tv24x24',
                'toilet24x24',
                'fridge24x24',
              ],
              imageDescription: [
                '2 кровати',
                'Телевизор',
                'Общий туалет',
                'Общая кухня',
              ],
            ),*/