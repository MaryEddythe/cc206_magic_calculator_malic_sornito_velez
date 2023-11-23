import 'package:cc206_magic_calculator_malic_sornito_velez/features/article.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => AboutState();
}

class AboutState extends State<About> {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'edithor.ial',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Lora',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF001747),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NewsArticlePage()));
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications, size: 16),
              onPressed: () {},
            ),
          ],
        ),
      )
    );
  }
}