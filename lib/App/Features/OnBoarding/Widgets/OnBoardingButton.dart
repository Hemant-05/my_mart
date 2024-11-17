import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_mart/App/Features/OnBoarding/Controller/OnBoardingController.dart';
import 'package:my_mart/App/Utils/Constants/MyColors.dart';
import 'package:my_mart/App/Utils/Constants/MySizes.dart';
import 'package:my_mart/App/Utils/Device/DeviceUtility.dart';
import 'package:my_mart/App/Utils/Helpers/Helpers.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
      right: MySizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: dark? MyColors.white  : MyColors.primary),
        onPressed: () => OnBoardingController.instance.nextPage(),
        child: Icon(
          Iconsax.arrow_right_3,
          color: dark? MyColors.dark : MyColors.white,
        ),
      ),
    );
  }
}