import 'package:flutter/material.dart';
import 'package:kuchiger/screens/desktop/contacts_screen/widgets/contacts_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/widgets/app_bar_desktop.dart';
import 'package:kuchiger/screens/desktop/widgets/footer_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/widgets/main_widget_desktop.dart';

class ContactsScreenDesktop extends StatelessWidget {
  const ContactsScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarDesktop(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainWidgetDesktop(),
            ContactsWidgetDesktop(),
            FooterWidgetDesktop(),
          ],
        ),
      ),
    );
  }
}
