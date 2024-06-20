import 'package:coffe_shop/data/tmp_data.dart';
import 'package:coffe_shop/screens/screens.dart';
import 'package:coffe_shop/theme/app_theme.dart';
import 'package:coffe_shop/widgets/custom_filed_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final introductionItems = DataTmp.introductionList;
    final int itemCount = introductionItems.length;
    PageController controller = PageController();

    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
            controller: controller,
            physics: const ClampingScrollPhysics(),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              final item = introductionItems[index];
              return Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Image.network(item.imageUrl, fit: BoxFit.cover),
                  ),
                  Container(
                    color: Apptheme.backgroundColor.withOpacity(0.7),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    alignment: const Alignment(0, 0.5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          item.title,
                          style: Apptheme.introtile,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          item.subtitle,
                          style: Apptheme.introSubtile,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )
                ],
              );
            }),

        //Pageindicator
        Container(
          alignment: const Alignment(0, 0.65),
          child: SmoothPageIndicator(
            controller: controller,
            count: itemCount,
            effect: const ExpandingDotsEffect(
                activeDotColor: Apptheme.indicatorActiveColor,
                dotColor: Apptheme.indicatorInactiveColor,
                dotHeight: 5,
                dotWidth: 10),
          ),
        ),

        //Get started button
        Container(
          alignment: const Alignment(0, 0.85),
          child: CustomFiledButton(
            width: 136,
            height: 54,
            color: Apptheme.buttonBackground1Color,
            borderRadius: 16,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()));
            },
            child: Text('Get Started', style: Apptheme.cardTitleSmall),
          ),
        )
      ],
    ));
  }
}
