import 'package:flutter/material.dart';
import 'package:kuchiger/screens/mobile/contacts_screen/widgets/contacts_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/footer_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/app_bar_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/main_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/menu_mobile.dart';

class ContactsScreenMobile extends StatelessWidget {
  const ContactsScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarMobile(),
      drawer: MenuWidgetMobile(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainWidgetMobile(),
            ContactsWidgetMobile(),
            FooterWidgetMobile(),
          ],
        ),
      ),
    );
  }
}
