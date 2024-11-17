
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_mart/App/Features/OnBoarding/Screens/OnBoardingScreen.dart';
import 'package:my_mart/App/Utils/Theme/Theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Mart',
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      home: const ONBoardingScreen(),
    );
  }
}
