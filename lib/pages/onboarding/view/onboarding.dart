import 'package:e_shilf/core/routs.dart';
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../model/onboarding_model.dart';
import 'widget/onboarding_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int indexPage = 0;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, AppRouts.signin);
                  },
                  child: Text(
                    "تخطي",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.primaryColorLight),
                  )),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                        indexPage = index;
                      });
                    },
                    controller: controller,
                    itemCount: pages.length,
                    itemBuilder: (_, index) {
                      return OnboardingWidget(
                        imagePath: pages[index].imagePath,
                        title: pages[index].title,
                      );
                    },
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  textDirection: TextDirection.ltr,
                  effect: const WormEffect(
                      dotHeight: 16,
                      dotWidth: 16,
                      type: WormType.thinUnderground,
                      activeDotColor: AppColors.primaryColorLight),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                color: AppColors.primaryColorLight,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {
                  setState(() {
                    if (indexPage == pages.length - 1) {
                      Navigator.pushReplacementNamed(context, AppRouts.signin);
                    }
                    controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear);
                  });
                },
                child: Text("التالي",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.colorWhite)),
              ),
              indexPage == 0
                  ? Container()
                  : MaterialButton(
                      color: AppColors.primaryColorLight,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      onPressed: () {
                        setState(() {
                          controller.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linear);
                        });
                      },
                      child: Text("رجوع",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: AppColors.colorWhite)),
                    ),
            ],
          )
        ],
      ),
    ));
  }
}
