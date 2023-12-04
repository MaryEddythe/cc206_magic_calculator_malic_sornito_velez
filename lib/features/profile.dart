import 'package:flutter/material.dart';

import 'about.dart';
import 'home.dart';
import 'newshome.dart';
import 'settings.dart';
import 'sign_in.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int botNavBarOption = 2;

  void botNavBarTap(int indexBnb) {
    setState(() {
      botNavBarOption = indexBnb;

      if (indexBnb == 0) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Home()));
      } else if (indexBnb == 1) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const NewsHome()));
      } else if (indexBnb == 2) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Profile()));
      }
    });
  }

  BottomNavigationBar buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: const Color(0xFFFFFFFF),
      backgroundColor: const Color(0xFF0D1333),
      unselectedItemColor: const Color(0xFF8A8A8A),
      currentIndex: botNavBarOption,
      onTap: botNavBarTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_work_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: 'Newsstand',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.face_outlined),
          label: 'Profile',
        ),
      ],
    );
  }

  Widget _buildInterestCard(
      {IconData? iconData, String? label, Color? bgColor, String? imageUrl}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      margin: const EdgeInsets.all(3.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (imageUrl != null)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 1.2),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  imageUrl,
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          if (iconData != null && imageUrl == null)
            Icon(iconData, color: Colors.black),
          const SizedBox(width: 10),
          Text(
            label ?? '',
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 13,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

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
              "Profile",
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
      drawer: Drawer(
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
              child: Row(
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
            ),
            ListTile(
              leading:
                  const Icon(Icons.home_work_outlined, color: Colors.white),
              hoverColor: const Color.fromARGB(200, 0, 22, 71),
              title: const Text(
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
              leading: const Icon(Icons.settings, color: Colors.white),
              hoverColor: const Color.fromARGB(200, 0, 22, 71),
              title: const Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Lora',
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Settings()),
                );
              },
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
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const About()),
                );
              },
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
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Signin()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          color: Colors.white,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()));
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/dev2.png'),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Mary Eddythe S. Sornito',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50), //end of profile
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Your Interests',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        _buildInterestCard(
                            iconData: Icons.computer,
                            label: 'Tech',
                            bgColor: const Color.fromRGBO(255, 255, 255, 100)),
                        _buildInterestCard(
                            imageUrl:
                                "https://st3.depositphotos.com/1071909/19574/i/450/depositphotos_195745476-stock-photo-artificial-intelligence-ai.jpg",
                            label: 'AI',
                            bgColor: const Color.fromRGBO(255, 255, 255, 100)),
                        _buildInterestCard(
                            imageUrl:
                                'https://static4.depositphotos.com/1000507/360/i/600/depositphotos_3606155-stock-photo-multi-coloured-wardrobe-showcase-closeup.jpg',
                            label: 'Fashion',
                            bgColor: const Color.fromRGBO(255, 255, 255, 100))
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20), //end of interests section
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Your Recently Read',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Icon(Icons.book),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'You have no reading history yet. ',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton.icon(
                onPressed: () {},
                label: const Text('Support the Edithor.ial'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF001747),
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                ),
                icon: const Icon(Icons.arrow_forward),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }
}
