import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:semana5/segundo.dart';


void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Profile'),
        ),
        body: UserProfile(),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile Picture
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('C:/Users/manec/Desktop/PDM/wetransfer_aula5_2023-10-31_1030/Semana5/lib/aquiles.jpg'), // Replace with the actual image path
          ),

          SizedBox(height: 16),

          // Username/Handle
          Text(
            '@Aquiles200BC', // Replace with the actual username
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 8),

          // Name
          Text(
            'Aquiles Alexandre', // Replace with the actual name
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 16),

          // Bio/About Me
          Text(
            'Um bravo guerreiro espartano', // Replace with the actual bio
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 16),

          // Contact Information
          Text(
            'Email: aquiles@greece.com\nPhone: +30 691 365 2000\n', // Replace with the actual contact information
            style: TextStyle(fontSize: 16),
          ),

          SizedBox(height: 16),

          // Date of Birth
          Text(
            'Date of Birth: January 1, 200 B.C Mudar para container de datas', // Replace with the actual date of birth
            style: TextStyle(fontSize: 16),
          ),

          SizedBox(height: 16),

          // Activity Feed/Posts
          // For simplicity, using a placeholder container as an example
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey[200],
            child: Center(
              child: Text(
                'Death to Agammemon',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Add your logout logic here
              // For simplicity, let's just print a message for now
              print('Logout pressed');
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue, // Use the theme color or customize
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Logout',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}