import 'package:flutter/material.dart';
import 'package:qoute/utils/colors.dart';
import 'components/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Global Theme
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.appBar,
          titleTextStyle: TextStyle(
            color: Colors.white, // AppBar text color
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white), // AppBar icons
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // DefaultTextStyle for everything else
      builder: (context, child) => DefaultTextStyle(
        style: TextStyle(color: Colors.white),
        child: child!,
      ),

      home: HomePage(),
    );
  }
}
