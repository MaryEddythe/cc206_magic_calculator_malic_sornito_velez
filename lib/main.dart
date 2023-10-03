import 'package:flutter/material.dart';
import 'package:cc206_magic_calculator_malic_sornito_velez/features/signout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Out',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.Green),
        useMaterial3: true,
      ),
      home: const Signout(),
    );
  }
}