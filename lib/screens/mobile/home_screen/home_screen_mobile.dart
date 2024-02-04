import 'package:flutter/material.dart';
import 'package:kuchiger/screens/mobile/widgets/footer_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/home_screen/widgets/general_info_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/home_screen/widgets/line_widget_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/app_bar_mobile.dart';
import 'package:kuchiger/screens/mobile/widgets/main_widget_mobile.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarMobile(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainWidgetMobile(),
            GeneralInfoWidgetMobile(
              title: 'Об источнике',
              description:
                  'Кучегэр - уникальный термальный источник, расположенный на севере Бурятии, на стыке Баргузинского и Икатского горных хребтов. Строгие вершины гор наполнены удивительной внутренней силой, горные озера и ручьи кристально чисты. Целебные источники расположены по всей долине, а среди них самыми известными являются Кучигерские термально-грязевые источники.',
              imagePath: 'assets/images/dorojka.png',
              isTextFirst: true,
              imageSize: Size(145, 245),
            ),
            LineWidgetMobile(),
            GeneralInfoWidgetMobile(
              title: 'Лечение',
              description:
                  '-артриты и полиартриты\n-болезни костей\n-гинекология\n-кожные заболевания',
              imagePath: 'assets/images/buhta.png',
              isTextFirst: false,
              imageSize: Size(170, 165),
            ),
            LineWidgetMobile(),
            GeneralInfoWidgetMobile(
              title: 'Свойства воды',
              description:
                  'Источник содержит сульфатные, натриевые, гидрокарбонатные воды со следующими характеристиками:\n\nСодержание фтора - 10–18 мг/л\nСодержание сероводорода - 31 мг/л\nСодержание кремнекислоты - 70–85 мг/л\nТемпература - 46–47 °С',
              imagePath: 'assets/images/kaster.png',
              isTextFirst: true,
              imageSize: Size(150, 230),
            ),
            FooterWidgetMobile(),
          ],
        ),
      ),
    );
  }
}
