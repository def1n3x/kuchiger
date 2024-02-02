import 'package:flutter/material.dart';
import 'package:kuchiger/screens/mobile/transfer_screen/widgets/car_widget.dart';
import 'package:kuchiger/screens/mobile/transfer_screen/widgets/map_widget.dart';
import 'package:kuchiger/screens/mobile/transfer_screen/widgets/transfer_info_widget.dart';
import 'package:kuchiger/widgets/footer_widget.dart';
import 'package:kuchiger/widgets/kuchiger_app_bar.dart';
import 'package:kuchiger/widgets/kuchiger_main_widget.dart';

class TransferScreenMobile extends StatelessWidget {
  const TransferScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KuchigerAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            KuchigerMainWidget(),
            TransferInfoWidget(),
            CarWidget(),
            MapWidget(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
