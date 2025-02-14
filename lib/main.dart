import 'package:auth_ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'modules/welcome/view/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Screen',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackGroundColor,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            color: kWhiteColor,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(color: kPrimaryColor),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kWhiteColor.withOpacity(.2),
            ),
          ),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
