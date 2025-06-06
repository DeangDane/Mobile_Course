import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            // Top row: logo and icons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/name.jpg',
                    height: 30,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.search, color: Colors.black87),
                      SizedBox(width: 16),
                      Icon(Icons.person, color: Colors.black87),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // Title and description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Unlock Your Potential \nwith ',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.3,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Worktency',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Discover industry-leading courses designed to equip you with real-world skills. Join our community and start your journey to success today.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.6),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            Image.asset(
              'assets/images/courses.png',
              height: 250,
            ),
          ],
        ),
      ),
    );
  }
}
