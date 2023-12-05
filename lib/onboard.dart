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
              body: 'The man who never reads lives only one.',
              image: buildImage('assets/images/breaking news.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'BUSINESS',
              body: 'Available right at your fingerprints',
              image: buildImage('assets/images/business.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'ENTERTAINMENT',
              body: 'For enhanced reading experience',
              image: buildImage('assets/images/entertainment.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'UNFILTERED TRUTH',
              body: 'No. 1 Most Trusted News Source of 2023',
              image: buildImage('assets/images/fake news.png'),
              decoration: getPageDecoration(),
            ),
            // PageViewModel(
            //   title: 'Behold the gateway to the unfiltered truth.',
            //   body: 'No. 1 Most Trusted News Source of 2023',
            //   footer: ButtonWidget(
            //     text: 'Start Reading',
            //     onClicked: () => goToHome(context),
            //   ),
            //   image: buildImage('assets/images/fake news.png'),
            //   decoration: getPageDecoration(),
            // ),
          ],
         done: const Text('Get Started', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: const Text('Skip', style: TextStyle(color: Colors.white)), 
          onSkip: () => goToHome(context),
          next: const Icon(Icons.arrow_forward, color: Colors.white), 
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          nextFlex: 0,
        ),
      );
void goToHome(BuildContext context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Signin()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: const Color(0xFFBDBDBD),
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

 PageDecoration getPageDecoration() => const PageDecoration(
  titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
  bodyTextStyle: TextStyle(fontSize: 20),
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
