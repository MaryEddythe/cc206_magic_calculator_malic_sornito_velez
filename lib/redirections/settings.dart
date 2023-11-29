import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSettingItem(
              label: 'Notifications',
              icon: Icons.notifications, 
            ),
            buildSettingItem(
              label: 'Account',
              icon: Icons.account_circle,
            ),
            buildSettingItem(
              label: 'Privacy',
              icon: Icons.lock,
            ),
            // Add more settings items as needed
          ],
        ),
      ),
    );
  }

  Widget buildSettingItem({required String label, required IconData icon}) {
    return InkWell(
      onTap: () {
        // Handle setting item tap
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon( 
              icon,
              size: 30,
              color: Colors.black,
            ),
            SizedBox(width: 16),
            Text(
              label,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: 'Montserrat',
              ),
            ),
          ],
        ),
      ),
    ); 
  }
}
