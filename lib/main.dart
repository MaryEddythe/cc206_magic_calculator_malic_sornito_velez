import 'package:flutter/material.dart';
import 'package:cc206_magic_calculator_malic_sornito_velez/features/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white70,
      ),
      home: const Home(),
    );
  }
}
