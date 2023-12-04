import 'package:flutter/material.dart';
import 'about.dart';
import 'home.dart';
import 'profile.dart';
import 'settings.dart';
import 'sign_in.dart';

class NewsHome extends StatefulWidget {
  const NewsHome({super.key});

  @override
  State<NewsHome> createState() => _NewsHomeState();
}

class _NewsHomeState extends State<NewsHome> {
  int botNavBarOption = 1;

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

  Widget _buildGenreWidget(String genre, List<Widget> sourceWidgets) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          genre,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: sourceWidgets,
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("See more in "),
            Text(
              genre,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        const Divider(),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildSourceWidget(String name, String logoPath) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(logoPath),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestionIndicator() {
    return Container(
      width: 10,
      height: 10,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 4, 0, 255),
        shape: BoxShape.circle,
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
              "Newsstand",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.orange),
                SizedBox(width: 8),
                Text(
                  'Suggested Sources',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: [
                _buildGenreWidget('Science and Technology', [
                  _buildSourceWidget('Recombu', 'assets/images/recombu-t.png'),
                  _buildSourceWidget(
                      'PhoneRadar', 'assets/images/phoneradar-t.jpg'),
                  _buildSourceWidget(
                      'GameByte', 'assets/images/gamebyte-t.png'),
                  _buildSuggestionIndicator(),
                  _buildSourceWidget('New Scientist', 'assets/images/ns-t.jpg'),
                  _buildSourceWidget(
                      'ChannelBiz', 'assets/images/channelbiz-t.png'),
                ]),
                _buildGenreWidget('Entertainment', [
                  _buildSuggestionIndicator(),
                  _buildSourceWidget('Ok! Magazine', 'assets/images/ok-e.jpg'),
                  _buildSourceWidget(
                      'RadioTimes', 'assets/images/radiotimes-e.png'),
                  _buildSourceWidget(
                      'Student Problems', 'assets/images/sp-e.jpg'),
                  _buildSourceWidget('NME', 'assets/images/nme-e.png'),
                  _buildSourceWidget('Funny Vines', 'assets/images/fv-e.jpg'),
                ]),
                _buildGenreWidget('Health and Fitness', [
                  _buildSourceWidget(
                      'Fehresian\nEnergetics', 'assets/images/fehr-h.jpg'),
                  _buildSuggestionIndicator(),
                  _buildSourceWidget(
                      'Healthhunt', 'assets/images/healthhunt-h.jpg'),
                  _buildSourceWidget('Nursing Times', 'assets/images/nt-h.png'),
                  _buildSourceWidget('Pharmaceutical\nTechnology',
                      'assets/images/phartech-h.jpg'),
                  _buildSourceWidget(
                      'TheMindClan', 'assets/images/themindclan-h.jpg'),
                ]),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }
}
