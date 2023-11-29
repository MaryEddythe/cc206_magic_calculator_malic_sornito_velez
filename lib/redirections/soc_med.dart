import 'package:flutter/material.dart';

class SocialMediaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Medias'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Social Media Screen!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
