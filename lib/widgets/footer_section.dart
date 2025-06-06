import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
      child: Column(
        children: [
          // Top logo
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('assets/images/name.jpg', height: 30),
          ),
          const SizedBox(height: 16),

          // Navigation Links: 2 Columns
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  _FooterLink('About Us'),
                  _FooterLink('Contact Us'),
                  _FooterLink('FAQs'),
                  _FooterLink('Community Forum'),
                  _FooterLink('Term of Service'),
                  _FooterLink('Careers'),
                  _FooterLink('Leadership'),
                  _FooterLink('Blog'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  _FooterLink('Social Impact'),
                  _FooterLink('Cookies Setting'),
                  _FooterLink('Terms'),
                  _FooterLink('Accessibility Statement'),
                  _FooterLink('Investors'),
                  _FooterLink('GO Pro Course'),
                  _FooterLink('Affiliate'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 32),

          // Certified section
          const Text(
            'Certified',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Image.asset('assets/images/itc.png', height: 80),
          const SizedBox(height: 24),

          // Social icons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/social.png', height: 40), // includes fb, linkedin, youtube
            ],
          ),
          const SizedBox(height: 20),

          // Copyright
          const Text(
            '2023 ©  Worktency, Inc. All rights reserved.',
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String text;
  const _FooterLink(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Color(0xFF2D2D3A),
        ),
      ),
    );
  }
}
