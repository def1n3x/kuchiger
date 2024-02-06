import 'package:flutter/material.dart';
import 'package:kuchiger/screens/mobile/room_screen/widgets/info_widget.dart';
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
            InfoWidget(
              title: 'Корпус №10',
              description:
                  'Откройте для себя атмосферу нашего уютного корпуса, открытого с апреля по октябрь, и насладитесь неповторимым отдыхом в окружении природы. Просторные номера, идеальное расположение и внимательное обслуживание создадут идеальные условия для вашего уединенного отпуска.',
            ),
            FooterWidgetMobile(),
          ],
        ),
      ),
    );
  }
}
