import 'package:flutter/material.dart';
import 'package:cc206_magic_calculator_malic_sornito_velez/redirections/soc_med.dart';
import 'package:cc206_magic_calculator_malic_sornito_velez/redirections/settings.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.red,
          ),
          SizedBox(height: 16),
          Text(
            "John Dear" ,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.location_on, color: Colors.grey),
              SizedBox(width: 8.0),
              Text(
                'Iloilo City, Philippines',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Hello! This is John Dear, and I developed this Flutter application.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.red,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFDB2700),
              ),
              child: Text(
                'Welcome, ALEXANDER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            ListTile(
              title: Text('Social Medias'),
              leading: Icon(Icons.public),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SocialMediaScreen()),
                );
              },
            ),
            ListTile( 
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: () { 
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
            ),
            // Add more ListTiles for additional items
          ],
        ),
      ),
    );
  }
}
