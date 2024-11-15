
import 'package:flutter/material.dart';
import 'package:my_mart/App/HomeScreen.dart';
import 'package:my_mart/App/Utils/Theme/Theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Mart',
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}
