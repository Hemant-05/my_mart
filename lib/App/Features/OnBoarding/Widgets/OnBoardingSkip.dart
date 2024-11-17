import 'package:flutter/material.dart';
import 'package:my_mart/App/Features/OnBoarding/Controller/OnBoardingController.dart';
import 'package:my_mart/App/Utils/Constants/MySizes.dart';
import 'package:my_mart/App/Utils/Device/DeviceUtility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
      left: MySizes.defaultSpace,
      child: TextButton(
        onPressed: OnBoardingController.instance.skipPage,
        child: const Text(
          "Skip",
        ),
      ),
    );
  }
}
