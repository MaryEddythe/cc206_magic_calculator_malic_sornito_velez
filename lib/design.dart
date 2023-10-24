import 'package:flutter/material.dart';
import 'package:cc206_magic_calculator_malic_sornito_velez/features/signin.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: mainColorScheme(),
          
          textTheme: TextTheme(
            titleLarge: TextStyle(
                color: mainColorScheme().primary,
                fontFamily: 'Poppins',
                fontSize: 22,
                fontWeight: FontWeight.w500),

            titleMedium: TextStyle(
                color: mainColorScheme().primary,
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w500),

            titleSmall: TextStyle(
                color: mainColorScheme().primary,
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w500),

            bodyLarge: TextStyle(
                color: mainColorScheme().primary,
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w500),

            bodyMedium: TextStyle(
                color: mainColorScheme().primary,
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w400),

            bodySmall: TextStyle(
                color: mainColorScheme().primary,
                fontFamily: 'Poppins',
                fontSize: 10,
                fontWeight: FontWeight.w400),
          ),
          
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              return mainColorScheme().surface;
            },
          ), side: MaterialStateProperty.resolveWith<BorderSide?>(
                      (Set<MaterialState> states) {
            return BorderSide(
              color: mainColorScheme().primary,
            );
          })))),
      home: const Signin(),
    );
  }

  ColorScheme mainColorScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF001747),
      onPrimary: Color(0xFFFFFFFF),
      secondary: Color(0xFF345AAD),
      onSecondary: Color(0xFFFFFFFF),
      error: Color(0xFFE5362A),
      onError: Color(0xFFFFFFFF),
      background: Color(0xFFE6E6E6),
      onBackground: Color(0xFF000000),
      surface: Color(0xFFE6E6E6),
      onSurface: Color(0xFF001747),
    );
  }
}
