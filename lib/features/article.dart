import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(Header());
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'edithor.ial',
              style: GoogleFonts.lora(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color(0xFF001747),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications, size: 16),
                onPressed: () {},
              ),
            ],
          ),
          body: ListView(
            children: [
              SizedBox(height: 15),
              Text(
                'Breaking News',
                style: GoogleFonts.lora(
                  color: Color(0xFF001747), 
                  fontSize: 30, 
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 10),
              NewsArticlePage(),
              Expanded(
                child: TabBarView(
                  children: [
                    
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Color(0xFF808080),
            selectedItemColor: Color(0xFF345AAD),
            currentIndex: 1,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: 'Articles',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
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
  Widget _buildRoundedImageWithGradient(String imagePath, String mainText, String subText) {
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
            decoration: BoxDecoration(
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
                  style: GoogleFonts.lora(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  subText,
                  style: GoogleFonts.spaceMono(
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
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: _buildRoundedImageWithGradient(article.imagePath, article.mainText, article.subText),
            );
          }).toList(),
        ),
        SizedBox(height: 10),
        Container(
          height: 90,
          color: Colors.black,
        ),
        SizedBox(height: 10),
        Container(
          height: 90,
          color: Colors.black,
        ),
        SizedBox(height: 10),
        Container(
          height: 90,
          color: Colors.black,
        ),
        SizedBox(height: 10),
        Container(
          height: 90,
          color: Colors.black,
        ),
        SizedBox(height: 10),
        Container(
          height: 90,
          color: Colors.black,
        ),
      ],
    );
  }
}
