import 'package:flutter/material.dart';

class TeachersSection extends StatelessWidget {
  const TeachersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          const SizedBox(height: 24),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/teacher.png',
              fit: BoxFit.cover,
              width: 380, // Adjust based on layout
            ),
          ),
        ],
      ),
    );
  }
}
