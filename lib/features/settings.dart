// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../components/drawer.dart';
import 'about.dart';
import 'home.dart';
import 'sign_in.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF001747),
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Padding(
          padding: EdgeInsets.only(right: 45.0),
          child: Center(
            child: Text(
              "Settings",
              style: TextStyle(
                fontFamily: 'Lora',
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      drawer: AppDrawer(
        onHomeTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          );
        },
        onSettingsTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Settings()),
          );
        },
        onAboutUsTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const About()),
          );
        },
        onLogoutTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Signin()),
          );
        },
      ),
      body: Center(
        child: SettingsPage(),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          children: [
            buildSettingsCategory('Account', [
              buildSettingsItem('Edit Profile'),
              buildSettingsItem('Notifications'),
              buildSettingsItem('Privacy and Data'),
            ]),
            buildSettingsCategory('Login', [
              buildSettingsItem('Security'),
              buildSettingsItem('Logout'),
            ]),
            buildSettingsCategory('Support', [
              buildSettingsItem('Get help'),
              buildSettingsItem('Terms of Service'),
              buildSettingsItem('Privacy policy'),
            ]),
          ],
        ),
      ),
    );
  }

  Widget buildSettingsCategory(String categoryTitle, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            categoryTitle,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: items,
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget buildSettingsItem(String settingItem) {
    return ListTile(
      title: Text(settingItem),
      trailing: const Icon(Icons.arrow_right_outlined, color: Colors.black),
      onTap: () {},
    );
  }
}
