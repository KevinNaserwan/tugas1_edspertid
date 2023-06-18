import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(top: 80),
              child: Image.asset('images/profile2.png')),
          Container(
            margin: EdgeInsets.only(top: 80, left: 40, right: 40),
            child: Text(
              "My Name is Kevin Putrayudha Naserwan, I'm aspiring to become a software engineer and ui/ux designer. I live in indonesia and my daily activity is study as a student in university of sriwijaya",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
