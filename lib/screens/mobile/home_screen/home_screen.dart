import 'package:flutter/material.dart';
import 'package:kuchiger/screens/mobile/home_screen/widgets/general_info_widget.dart';
import 'package:kuchiger/widgets/kuchiger_app_bar.dart';
import 'package:kuchiger/widgets/kuchiger_main_widget.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: KuchigerAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            KuchigerMainWidget(),
            GeneralInfoWidget(
              title: 'Об источнике',
              description:
                  'Кучегэр - уникальный термальный источник, расположенный на севере Бурятии, на стыке Баргузинского и Икатского горных хребтов. Строгие вершины гор наполнены удивительной внутренней силой, горные озера и ручьи кристально чисты. Целебные источники расположены по всей долине, а среди них самыми известными являются Кучигерские термально-грязевые источники.',
              imagePath: 'assets/images/dorojka.png',
              isTextFirst: true,
              imageSize: Size(145, 245),
            ),
            LineWidget(),
            GeneralInfoWidget(
              title: 'Лечение',
              description:
                  '-артриты и полиартриты\n-болезни костей\n-гинекология\n-кожные заболевания',
              imagePath: 'assets/images/buhta.png',
              isTextFirst: false,
              imageSize: Size(170, 165),
            ),
            LineWidget(),
            GeneralInfoWidget(
              title: 'Свойства воды',
              description:
                  'Источник содержит сульфатные, натриевые, гидрокарбонатные воды со следующими характеристиками:\n\nСодержание фтора - 10–18 мг/л\nСодержание сероводорода - 31 мг/л\nСодержание кремнекислоты - 70–85 мг/л\nТемпература - 46–47 °С',
              imagePath: 'assets/images/kaster.png',
              isTextFirst: true,
              imageSize: Size(150, 230),
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}

class LineWidget extends StatelessWidget {
  const LineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: const Color.fromRGBO(22, 26, 30, 1),
      margin: const EdgeInsets.symmetric(horizontal: 100),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      color: Colors.black,
      child: const Center(
        child: Text(
          '© Kuchiger',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
