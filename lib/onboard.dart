import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) => SafeArea (
    child: IntroductionScreen(
      pages: [
        PageViewModel(
           title: 'DAILY NEWS',
            body: """Stay informed with our daily news updates.Get the latest headlines, breaking stories, and in-depth coverage delivered to your fingertips every day. Explore diverse topics and personalize your news feed for a tailored reading experience. """,
            image: buildImage('assets/ebook.png'),
            decoration: getPageDecoration(),
            
        )
      ],
       done: Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
       onDone: () {},
    ),
    );
}