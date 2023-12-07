// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final VoidCallback onHomeTap;
  final VoidCallback onSettingsTap;
  final VoidCallback onAboutUsTap;
  final VoidCallback onLogoutTap;

  const AppDrawer({
    required this.onHomeTap,
    required this.onSettingsTap,
    required this.onAboutUsTap,
    required this.onLogoutTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF001747),
      child: Column(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/people.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Color.fromARGB(100, 0, 22, 71),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/dev2.png'),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Welcome, Mary!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Lora',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_work_outlined, color: Colors.white),
            hoverColor: const Color.fromARGB(200, 0, 22, 71),
            title: const Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lora',
              ),
            ),
            onTap: onHomeTap,
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.white),
            hoverColor: const Color.fromARGB(200, 0, 22, 71),
            title: const Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lora',
              ),
            ),
            onTap: onSettingsTap,
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.white),
            hoverColor: const Color.fromARGB(200, 0, 22, 71),
            title: const Text(
              'About Us',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lora',
              ),
            ),
            onTap: onAboutUsTap,
          ),
          Expanded(
            child: Container(),
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined, color: Colors.white),
            tileColor: const Color.fromARGB(255, 0, 15, 50),
            title: const Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lora',
              ),
            ),
            onTap: onLogoutTap,
          ),
        ],
      ),
    );
  }
}