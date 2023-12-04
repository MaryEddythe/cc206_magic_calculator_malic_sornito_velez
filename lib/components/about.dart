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
            'About us',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Lora',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF001747),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications, size: 16),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/logo.jpg', 
                      fit: BoxFit.contain,
                      height: 175, 
                      width: 175, 
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The News Company Inc.',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Lora",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          """The application was created for the subject, Application Development. It was founded by three individuals who are eager to learn about app development.""",
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: "SpaceMono",
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Text(
                          """Furthermore, this app aims to deliver news to users so that they are aware of the events happening around them.""",
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: "SpaceMono",
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Board of Directors',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Lora",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black, 
                                width: 1, 
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/malic.jpg', 
                                height: 75, 
                                width: 75, 
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Alexander Malic',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Lora",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black, 
                                width: 1, 
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/edith.png', 
                                height: 75, 
                                width: 75, 
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Mary Eddythe Sornito',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Lora",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black, 
                                width: 1, 
                              ),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/kyle.jpg', 
                                height: 75, 
                                width: 75, 
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Kyle G. Velez',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Lora",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





