import 'package:flutter/material.dart';
import 'package:kuchiger/screens/desktop/widgets/app_bar_desktop.dart';

class HomeScreenDesktop extends StatelessWidget {
  const HomeScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KuchigerAppBarDesktop(),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
