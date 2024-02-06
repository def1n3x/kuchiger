import 'package:flutter/material.dart';
import 'package:kuchiger/screens/desktop/home_screen/widgets/general_info_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/home_screen/widgets/line_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/widgets/app_bar_desktop.dart';
import 'package:kuchiger/screens/desktop/widgets/footer_widget_desktop.dart';
import 'package:kuchiger/screens/desktop/widgets/main_widget_desktop.dart';

class HomeScreenDesktop extends StatelessWidget {
  const HomeScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarDesktop(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainWidgetDesktop(),
            GeneralInfoWidgetDesktop(
              title: 'Об источнике',
              description:
                  'Кучегэр - уникальный термальный источник, расположенный на севере Бурятии, на стыке Баргузинского и Икатского горных хребтов. Строгие вершины гор наполнены удивительной внутренней силой, горные озера и ручьи кристально чисты. Целебные источники расположены по всей долине, а среди них самыми известными являются Кучигерские термально-грязевые источники.',
              imagePath: 'assets/images/dorojka.png',
              imageSize: Size(445, 595),
              isTextFirst: true,
              imageBorderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(-6, 5),
                ),
              ],
            ),
            LineWidgetDesktop(),
            GeneralInfoWidgetDesktop(
              title: 'Лечение',
              description:
                  '-артриты и полиартриты\n-болезни костей\n-гинекология\n-кожные заболевания',
              imagePath: 'assets/images/buhta.png',
              imageSize: Size(555, 450),
              isTextFirst: false,
              imageBorderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(6, 5),
                ),
              ],
            ),
            LineWidgetDesktop(),
            GeneralInfoWidgetDesktop(
              title: 'Свойства воды',
              description:
                  'Источник содержит сульфатные, натриевые, гидрокарбонатные воды со следующими характеристиками:\n\nСодержание фтора - 10–18 мг/л\nСодержание сероводорода - 31 мг/л\nСодержание кремнекислоты - 70–85 мг/л\nТемпература - 46–47 °С',
              imagePath: 'assets/images/kaster.png',
              imageSize: Size(445, 595),
              isTextFirst: true,
              imageBorderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(-6, 5),
                ),
              ],
            ),
            FooterWidgetDesktop(),
          ],
        ),
      ),
    );
  }
}
