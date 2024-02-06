import 'package:flutter/material.dart';
import 'package:kuchiger/screens/mobile/transfer_screen/widgets/car_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/transfer_screen/widgets/map_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/transfer_screen/widgets/transfer_info_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/footer_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/app_bar_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/main_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/menu_mobile.dart';

class TransferScreenMobile extends StatelessWidget {
  const TransferScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarMobile(),
      drawer: MenuWidgetMobile(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainWidgetMobile(),
            TransferInfoWidgetMobile(),
            CarWidgetMobile(),
            MapWidgetMobile(),
            FooterWidgetMobile(),
          ],
        ),
      ),
    );
  }
}
