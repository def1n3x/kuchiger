import 'package:flutter/material.dart';
import 'package:kuchiger/screens/desktop/transfer_screen/widgets/car_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/transfer_screen/widgets/map_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/transfer_screen/widgets/tesing.dart';
import 'package:kuchiger/screens/desktop/transfer_screen/widgets/transfer_info_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/widgets/app_bar_desktop.dart';
import 'package:kuchiger/screens/desktop/widgets/footer_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/widgets/main_widget_desktop.dart';

class TransferScreenDesktop extends StatelessWidget {
  const TransferScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarDesktop(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainWidgetDesktop(),
            TransferInfoWidgetDesktop(),
            CarWidgetDesktop(),
            MapWidgetDesktop(),
            FooterWidgetDesktop(),
          ],
        ),
      ),
    );
  }
}
