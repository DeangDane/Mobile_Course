import 'package:flutter/material.dart';

class ExploreButtons extends StatelessWidget {
  const ExploreButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // ✅ White background
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Center(
        child: Column(
          children: [
            // Explore Courses Button
            Container(
              width: 180,
              margin: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.menu_book_outlined, color: Color(0xFF1A3C6D)),
                label: const Text(
                  'Explore Courses',
                  style: TextStyle(
                    color: Color(0xFF1A3C6D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF1F5FF), // Light blue background
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),

            // Join as Educator Button
            SizedBox(
              width: 210,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.school, color: Colors.white),
                label: const Text(
                  'Join as an educator',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF8700), // Orange background
                  elevation: 3,
                  shadowColor: Colors.black26,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
