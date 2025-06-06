import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FeaturedCourses extends StatefulWidget {
  const FeaturedCourses({super.key});

  @override
  State<FeaturedCourses> createState() => _FeaturedCoursesState();
}

class _FeaturedCoursesState extends State<FeaturedCourses> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 25, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Featured Course',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D2D3A),
              ),
            ),
          ),
          const SizedBox(height: 12),

          // Tabs
          const _CourseTabs(),
          const SizedBox(height: 12),

          // Grid PageView
          SizedBox(
            height: 592,
            child: PageView(
              controller: _pageController,
              children: [
                _courseGridPage(),
                _courseGridPage(), // for mockup second page
              ],
            ),
          ),

          const SizedBox(height: 12),

          // Page indicator
          Center(
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 4,
              effect: const WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: Colors.orange,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _courseGridPage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.72,
        ),
        itemBuilder: (context, index) => const _CourseCard(),
      ),
    );
  }
}

class _CourseTabs extends StatelessWidget {
  const _CourseTabs();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
        child: TabBar(
          isScrollable: true,
          indicatorColor: Colors.orange,
          indicatorWeight: 2.5,
          labelColor: Color(0xFF2D2D3A),
          unselectedLabelColor: Colors.grey,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          tabs: const [
            Tab(text: 'Artificial Intelligent'),
            Tab(text: 'Machine Learning'),
            Tab(text: 'Self Development'),
          ],
        ),
    );
  }
}


class _CourseCard extends StatelessWidget {
  const _CourseCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 10),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Image.asset(
                  'assets/images/msword.png',
                  height: 90,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          // Title and subtitle
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Microsoft word',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.wifi_2_bar_sharp, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text("កម្រិតដំបូង", style: TextStyle(fontSize: 10)),
                    SizedBox(width: 8),
                    Icon(Icons.people, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text("99 នាក់បានរៀន", style: TextStyle(fontSize: 10)),
                  ],
                ),
              ],
            ),
          ),

          // Instructor
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                Image(
                  semanticLabel: 'Instructor Image',
                  image: AssetImage('assets/images/acc.png'),
                ),
                
        
              ],
            ),
          ),

          // Price and Start
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '\$39.99',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'Start →',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
