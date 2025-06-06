import 'package:flutter/material.dart';

class TestimonialSection extends StatelessWidget {
  const TestimonialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Image.asset('assets/images/icon.png', height: 28),
              const SizedBox(width: 10),
              const Expanded(
                child: Text(
                  'To reach our only One goal,\nwhat we can share with you today',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2D2D3A),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // 4 Testimonial cards
          ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => testimonialCard(),
          ),

          const SizedBox(height: 8),

          // See more link
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'See more',
              style: TextStyle(
                color: Colors.blue.shade600,
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget testimonialCard() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left Image
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/teach.png',
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),

          // Right content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '“Machine learning and AI are the engines driving the technological revolution of our time, transforming the way we work, live, and innovate”',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text(
                      'Dr. Valy Dona',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 7,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '| Professor @ITC,  Cofounder @ Worktency',
                      style: TextStyle(fontSize: 6, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Tags
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    tagChip('Machine learning'),
                    const SizedBox(height: 2.8),
                    tagChip('Artificial Intelligent'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget tagChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.bookmark, size: 14, color: Colors.blue),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(fontSize: 8.6, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
