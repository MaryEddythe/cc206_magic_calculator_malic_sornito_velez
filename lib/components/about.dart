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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NewsArticlePage()));
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logo.jpg', 
                fit: BoxFit.contain,
                height: 175, 
                width: 175, 
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'The News Company Inc.',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Lora",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                          fontWeight: FontWeight.normal,
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
                                  fontWeight: FontWeight.w200,
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
                                  fontWeight: FontWeight.w200,
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
                                  fontWeight: FontWeight.w200,
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
          ],
        ),
      ),
    );
  }
}

