import 'package:flutter/material.dart';

class SocialMediaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Medias'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialMediaItem(
                label: 'Instagram',
                content: '@moleclec',
              ),
              buildSocialMediaItem(
                label: 'Facebook',
                content: 'Alexander Malic',
              ),
              buildSocialMediaItem(
                label: 'Gmail',
                content: 'josefalex612@gmail.com',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSocialMediaItem({required String label, required String content}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(height: 4),
          Text(
            content,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontFamily: 'Montserrat', 
            ),
          ),
        ],
      ),
    );
  }
}
