import 'package:cc206_magic_calculator_malic_sornito_velez/features/article.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

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
            icon: const Icon(Icons.arrow_back),
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
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'assets/images/logo.jpg', 
                fit: BoxFit.contain,
                height: 175, 
                width: 175, 
              ),
            ),
            const SizedBox(height: 20), // Add spacing between the image and text
            Text(
              'edithor.ial',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Lora",
                fontWeight: FontWeight.bold,
              ),
            ),
            // Other widgets or text can go here
          ],
        ),
      ),
    );
  }
}

