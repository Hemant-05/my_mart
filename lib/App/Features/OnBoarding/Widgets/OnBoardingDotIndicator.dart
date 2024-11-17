
import 'package:flutter/material.dart';
import 'package:my_mart/App/Utils/Constants/MyColors.dart';
import 'package:my_mart/App/Utils/Constants/MySizes.dart';
import 'package:my_mart/App/Utils/Device/DeviceUtility.dart';
import 'package:my_mart/App/Utils/Helpers/Helpers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Controller/OnBoardingController.dart';

class OnBoardingDotIndicator extends StatelessWidget {
  const OnBoardingDotIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Positioned(
      height: MyDeviceUtils.getAppBarHeight() + 25,
      right: MySizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: OnBoardingController.instance.pageController,
        count: 3,
        effect: ExpandingDotsEffect(
            dotHeight: 6, activeDotColor: dark? MyColors.white : MyColors.primary ),
      ),
    );
  }
}
