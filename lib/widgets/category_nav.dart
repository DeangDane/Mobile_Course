import 'package:flutter/material.dart';

class CategoryNav extends StatelessWidget {
  const CategoryNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // white background
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          // Top Navigation Icons
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _NavIcon(icon: Icons.search, label: 'Explore'),
                _NavIcon(icon: Icons.assignment_outlined, label: 'My courses'),
                _NavIcon(
                  icon: Icons.play_circle_fill,
                  label: 'Online course',
                  iconColor: Colors.orange,
                ),
                _NavIcon(icon: Icons.layers_outlined, label: 'Category'),
              ],
            ),
          ),

          const SizedBox(height: 0),

          // Category Cards
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              _CategoryCard(
                  title: 'Expert Instructors', image: 'course1.png'),
              _CategoryCard(title: 'Flexible Learning', image: 'course2.png'),
              _CategoryCard(title: 'Hands-On Learning', image: 'course3.png'),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;

  const _NavIcon({
    required this.icon,
    required this.label,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: iconColor, size: 26),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final String title;
  final String image;

  const _CategoryCard({
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color(0xFFF3F6FE),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset('assets/images/$image', height: 60),
          const SizedBox(height: 12),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
