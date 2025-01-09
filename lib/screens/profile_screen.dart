import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/nophoto.png'), 
              ),
            ),
            SizedBox(height: 16),
            

            Expanded(
              child: ListView(
                children: [
                  _buildOptionItem('Download Option'),
                  _buildOptionItem('Video playback options'),
                  _buildOptionItem('Account Settings'),
                  _buildOptionItem('Account Security'),
                  _buildOptionItem('Email Notification Preferences'),
                  _buildOptionItem('Learning Reminders'),
                  _buildOptionItem('About Learnout'),
                  _buildOptionItem('Frequently Asked Questions'),
                  _buildOptionItem('Share the Learnout App'),
                ],
              ),
            ),
            

            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _showLogoutDialog(context); 
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('LOG OUT'),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildOptionItem(String text) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
      onTap: () {

      },
    );
  }


  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Log Out'),
          content: Text('Log Out From Learnout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {

                Navigator.pushReplacementNamed(context, '/');
              },
              child: Text('Log Out'),
            ),
          ],
        );
      },
    );
  }
}
