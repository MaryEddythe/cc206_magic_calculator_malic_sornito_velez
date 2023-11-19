import 'package:cc206_magic_calculator_malic_sornito_velez/features/home.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const Header());
}
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

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
          backgroundColor: const Color(0xFF001747),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications, size: 16),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'Breaking News',
                style: TextStyle(
                  fontFamily: 'Lora',
                  color: Color(0xFF001747),
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              child: NewsArticlePage(),
            ),
          ],
        ),
      ),
    );
  }
}




class NewsArticle {
  final String imagePath;
  final String mainText;
  final String subText;

  NewsArticle({
    required this.imagePath,
    required this.mainText,
    required this.subText,
  });
}

class NewsArticlePage extends StatelessWidget {
  const NewsArticlePage({super.key});

  Widget _buildRoundedImageWithGradient(String imagePath, String mainText,
      String subText) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black],
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            right: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainText,
                  style: const TextStyle(
                    fontFamily: 'Lora',
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  subText,
                  style: const TextStyle(
                    fontFamily: 'SpaceMono',
                    color: Colors.white,
                    fontSize: 8,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<NewsArticle> articles = [
      NewsArticle(
        imagePath: 'assets/images/news1.jpg',
        mainText: 'UN: Will help Palestine, Israel resolve conflict',
        subText: 'Published 2 hours ago',
      ),
      NewsArticle(
        imagePath: 'assets/images/news2.jpg',
        mainText: 'Israel Took Advantage of 9/11 to Wage War on Palestine | CNN News',
        subText: 'Published 12 hours ago',
      ),
      NewsArticle(
        imagePath: 'assets/images/news3.jpg',
        mainText: 'Election results transmission starts | GMA News',
        subText: 'Published 6 hours ago',
      ),
      NewsArticle(
        imagePath: 'assets/images/news4.jpg',
        mainText: 'October 30 declared a special non-working day for barangay, SK polls',
        subText: 'Published 30 minutes ago',
      ),
      NewsArticle(
        imagePath: 'assets/images/news5.jpg',
        mainText: 'Filipinos flock to cemeteries ahead of Undas | ABS-CBN News',
        subText: 'Published 5 minutes ago',
      ),
    ];


    double containerWidth = MediaQuery
        .of(context)
        .size
        .width * 0.96;

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            enableInfiniteScroll: true,
          ),
          items: articles.map((article) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: _buildRoundedImageWithGradient(
                  article.imagePath, article.mainText, article.subText),
            );
          }).toList(),
        ),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Recent News',
            style: TextStyle(
              fontFamily: 'Lora',
              color: Color(0xFF001747),
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        _buildRoundedContainer(containerWidth, 80, Colors.black),
        const SizedBox(height: 10),
        _buildRoundedContainer(containerWidth, 80, Colors.black),
        const SizedBox(height: 10),
        _buildRoundedContainer(containerWidth, 80, Colors.black),
      ],
    );
  }

  Widget _buildRoundedContainer(double width, double height, Color color) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}