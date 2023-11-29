import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Medias'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Social Media Screen!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            buildSocialMediaItem(
              icon: FontAwesomeIcons.instagram,
              label: '@moleclec',
            ),
            buildSocialMediaItem(
              icon: FontAwesomeIcons.facebook,
              label: 'Alexander Malic',
            ),
            buildSocialMediaItem(
              icon: Icons.mail,
              label: 'josefalex612@gmail.com',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSocialMediaItem({required IconData icon, required String label}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 30),
          SizedBox(width: 16),
          Text(
            label,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
