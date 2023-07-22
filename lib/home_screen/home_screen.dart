import 'package:flutter/material.dart';

import '../utili/categories.dart';
import '../utili/two_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25),
            ),
            height: 50,
            width: 50,
            child: const Center(
              child: Text(
                'O',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ),
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back,',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Text(
              'Ozurumba007',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          const Icon(Icons.notifications, size: 30, color: Colors.white),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {
              if (scaffoldKey.currentState!.isEndDrawerOpen) {
                scaffoldKey.currentState!.closeEndDrawer();
              } else {
                scaffoldKey.currentState!.openEndDrawer();
              }
            },
            icon: const Icon(Icons.dashboard_outlined),
            iconSize: 30,
            color: Colors.white,
          ),
        ],
      ),
      endDrawer: const Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                child: Image.asset('assets/community.png'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      'Explore Categories',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const Categories(
                text: 'All',
                secondCategorytext: 'Technical Courses',
                thirdCategorytext: 'Non-technical Courses',
              ),
              const SizedBox(height: 10),
              const TwoText(
                firstText: 'Ongoing Courses',
                secondText: 'View All',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        child: Image.asset('assets/download.jpg'),
                      ),
                    ],
                  ),
                ),
              ),
              const TwoText(
                firstText: 'Recommended Courses',
                secondText: 'View All',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Course',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: 'Enrollments',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.code_outlined),
            label: 'Code',
          ),
        ],
      ),
    );
  }
}
