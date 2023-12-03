import 'package:flutter/material.dart';
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Settings",
              style: TextStyle(
                  fontFamily: 'Lora',
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF001747),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
     drawer: Drawer(
        backgroundColor: Color(0xFF001747),
        child: Column(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/people.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Color.fromARGB(100, 0, 22, 71),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/dev2.png'),
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
            ),
            ListTile(
              leading: Icon(Icons.home_work_outlined, color: Colors.white),
              hoverColor: Color.fromARGB(200, 0, 22, 71),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lora',
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              hoverColor: Color.fromARGB(200, 0, 22, 71),
              title: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lora',
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.white),
              hoverColor: Color.fromARGB(200, 0, 22, 71),
              title: Text(
                'About Us',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lora',
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => About()),
                );
              },
            ),
            Expanded(
              child: Container(),
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined, color: Colors.white),
              tileColor: Color.fromARGB(255, 0, 15, 50),
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lora',
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Signin()),
                );
              },
            ),
          ],
        ),
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
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(),
        Column(
          children: items,
        ),
      ],
    );
  }

  Widget buildSettingsItem(String settingItem) {
    return ListTile(
      title: Text(settingItem),
      onTap: () {},
    );
  }
}
