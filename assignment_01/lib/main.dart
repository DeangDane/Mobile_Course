import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // Function to launch email
  void _launchEmail() async {
    final Uri gmailUri = Uri.parse(
      "https://mail.google.com/mail/?view=cm&fs=1&to=deangdane9@gmail.com&su=Hiring Inquiry&body=Hello, I am interested in your work!",
    );

    if (!await launchUrl(gmailUri, mode: LaunchMode.externalApplication)) {
      print('Could not launch Gmail');
    }
  }

  // Function to launch LinkedIn profile
  void _launchLinkedIn() async {
    final Uri url = Uri.parse('http://linkedin.com/in/dane-deang-58b4951ab');

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print('Could not launch LinkedIn');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AeroVision',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile Image
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/Dane.JPG'),
              ),
              SizedBox(height: 20),

              // Welcome Message
              Text(
                'Welcome to my Portfolio',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),

              // Name & Role
              Text(
                'Hi I’m',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Deang Dane',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Text(
                'Mobile Developer',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // Bio Description
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  '"Mobile Development skilled in Flutter and Dart, dedicated to creating high-quality, responsive apps for seamless user experiences."',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              SizedBox(height: 40),

              // Hire Me Button
              ElevatedButton(
                onPressed: _launchEmail,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                ),
                child: Text(
                  'Hire Me!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Download CV Button (LinkedIn)
              OutlinedButton(
                onPressed: _launchLinkedIn,
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  side: BorderSide(color: Colors.blue),
                  elevation: 5,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.download, color: Colors.blue),
                    SizedBox(width: 8),
                    Text(
                      'Download CV',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
