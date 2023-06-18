import 'package:flutter/material.dart';
import 'package:tugas1_edspertid/profile_screen.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:tugas1_edspertid/biografi.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final websiteUri = Uri.parse('https://www.instagram.com/kevinnaserwan/');
  final websiteUri1 = Uri.parse('https://www.linkedin.com/in/kevinnaserwan/');
  final websiteUri2 = Uri.parse('https://github.com/KevinNaserwan');
  final websiteUri3 = Uri.parse('https://www.behance.net/kevinnaserwan');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'images/logo.png',
          width: 25,
          height: 25,
        ),
        actions: [
          Image.asset(
            'lib/icons/menu.png',
            width: 25,
            height: 25,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                width: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kevin Naserwan",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    Text(
                      "Web Developer",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Palembang, Indonesia",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    Text(
                        "Aspiring to become a software engineer and UI/UX Designer"),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          FloatingActionButton(
                            onPressed: () {
                              launchUrl(websiteUri,
                                  mode: LaunchMode.externalApplication);
                            },
                            heroTag: null,
                            child: Image.asset(
                              'lib/icons/instagram.png',
                              width: 30,
                              height: 30,
                            ),
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(height: 20),
                          FloatingActionButton(
                            onPressed: () {
                              launchUrl(websiteUri1,
                                  mode: LaunchMode.externalApplication);
                            },
                            heroTag: null,
                            child: Image.asset(
                              'lib/icons/linkedin.png',
                              width: 30,
                              height: 30,
                            ),
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(height: 20),
                          FloatingActionButton(
                            onPressed: () {
                              launchUrl(websiteUri2,
                                  mode: LaunchMode.externalApplication);
                            },
                            heroTag: null,
                            child: Image.asset(
                              'lib/icons/git.png',
                              width: 30,
                              height: 30,
                            ),
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(height: 20),
                          FloatingActionButton(
                            onPressed: () {
                              launchUrl(websiteUri3,
                                  mode: LaunchMode.externalApplication);
                            },
                            heroTag: null,
                            child: Image.asset(
                              'lib/icons/be.png',
                              width: 30,
                              height: 30,
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 33.4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 270),
                      child: Image.asset('images/profile.png')),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: FloatingActionButton(
                        backgroundColor: Colors.blue,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfileScreen()));
                        },
                        child: Image.asset(
                          'lib/icons/nav.png',
                          width: 35,
                          height: 35,
                        )),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
