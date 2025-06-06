// lib/screens/landing_page.dart
import 'package:flutter/material.dart';
import '../widgets/header_section.dart';
import '../widgets/explore_buttons.dart';
import '../widgets/category_nav.dart';
import '../widgets/featured_courses.dart';
import '../widgets/teachers_section.dart';
import '../widgets/testimonial_section.dart';
import '../widgets/footer_section.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeaderSection(),
            ExploreButtons(),
            CategoryNav(),
            FeaturedCourses(),
            TeachersSection(),
            TestimonialSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}