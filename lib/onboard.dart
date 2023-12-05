import 'package:cc206_magic_calculator_malic_sornito_velez/features/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'BREAKING NEWS',
              body: 'It delivers current news updates and in-depth articles right to your fingertips every day. Explore a variety of topics and personalize your news feed for a tailored reading experience. Stay up-to-date effortlessly.',
              image: buildImage(context,'assets/images/breaking news.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'BUSINESS',
              body: 'The application offers concise updates and comprehensive insights into the world of commerce. Stay ahead with market trends, financial reports, and expert analysis, empowering you with essential information for making informed decisions in the business landscape.',
              image: buildImage(context,'assets/images/business.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'ENTERTAINMENT',
              body: 'Welcome to our platform! Explore the world of news with our intuitive interface. Dive into the latest headlines, personalize your news feed, and stay informed effortlessly. Begin your journey to curated news experiences tailored just for you.',
              image: buildImage(context,'assets/images/entertainment.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'UNFILTERED TRUTH',
              body: 'Discover the unfiltered truth. Step into a realm where information reigns supreme. Our platform delivers uncensored, authentic news, empowering you with unvarnished facts and diverse perspectives. Explore a world of raw, unfiltered truth through our intuitive onboarding experience',
              image: buildImage(context,'assets/images/fake news.png'),
              decoration: getPageDecoration(),
            ),
          ],
         done: const Text('Get Started', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins", color: Colors.white)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: const Text('Skip', style: TextStyle(color: Colors.white, fontFamily: "Poppins")), 
          onSkip: () => goToHome(context),
          next: const Icon(Icons.arrow_forward, color: Colors.white), 
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Color(0xFF0D1333),
          nextFlex: 0,
        ),
      );
void goToHome(BuildContext context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Signin()),
      );

  Widget buildImage(BuildContext context, String path) =>
  Center(
    child: Image.asset(
      path,
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.9,
    ),
  );


  DotsDecorator getDotDecoration() => DotsDecorator(
        color: const Color(0xFFBDBDBD),
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

 PageDecoration getPageDecoration() => const PageDecoration(
  titleTextStyle: TextStyle(fontSize: 36, fontFamily: "Poppins", fontWeight: FontWeight.bold),
  bodyTextStyle: TextStyle(fontSize: 12, fontFamily: "Poppins",),
  imagePadding: EdgeInsets.all(24),
  pageColor: Colors.white,
);
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    required this.text,
    required this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10, 
      child: ElevatedButton(
        onPressed: onClicked,
        child: Text(text),
      ),
    );
  }
}
