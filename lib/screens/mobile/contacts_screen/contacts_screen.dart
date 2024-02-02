import 'package:flutter/material.dart';
import 'package:kuchiger/screens/mobile/contacts_screen/widgets/contacts_widget.dart';
import 'package:kuchiger/widgets/footer_widget.dart';
import 'package:kuchiger/widgets/kuchiger_app_bar.dart';
import 'package:kuchiger/widgets/kuchiger_main_widget.dart';

class ContactsScreenMobile extends StatelessWidget {
  const ContactsScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KuchigerAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            KuchigerMainWidget(),
            ContactsWidget(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
