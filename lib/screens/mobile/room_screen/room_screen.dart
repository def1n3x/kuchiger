import 'package:flutter/material.dart';
import 'package:kuchiger/screens/mobile/room_screen/widgets/info_widget.dart';
import 'package:kuchiger/widgets/footer_widget.dart';
import 'package:kuchiger/widgets/kuchiger_app_bar.dart';
import 'package:kuchiger/widgets/kuchiger_main_widget.dart';

class RoomScreenMobile extends StatelessWidget {
  const RoomScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KuchigerAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            KuchigerMainWidget(),
            InfoWidget(
              title: 'Корпус №10',
              description:
                  'Откройте для себя атмосферу нашего уютного корпуса, открытого с апреля по октябрь, и насладитесь неповторимым отдыхом в окружении природы. Просторные номера, идеальное расположение и внимательное обслуживание создадут идеальные условия для вашего уединенного отпуска.',
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
