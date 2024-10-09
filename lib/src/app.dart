import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/app_colors.dart';
import 'package:real_estate_app/src/features/tab_view/tab_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Real Estate App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primaryColor,
          ),
          useMaterial3: true,
          textTheme: TextTheme(
            bodySmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.bodyTextColor,
            ),
            titleLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: AppColors.titleTextColor,
            ),
          ),
        ),
        home: const TabView());
  }
}
