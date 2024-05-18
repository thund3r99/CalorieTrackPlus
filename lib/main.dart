import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/widgets/base_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CalorieTrack+',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primaryColor,
          secondary: AppColors.secondaryColor,
          onSurface: AppColors.primaryWhite,
        ),
      ),
      home: const BasePage(),
    );
  }
}
