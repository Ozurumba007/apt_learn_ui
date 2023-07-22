import 'package:flutter/material.dart';

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
        backgroundColor: Colors.purpleAccent[200],
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
        title: Column(
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
          Icon(Icons.notifications, size: 30, color: Colors.white),
          IconButton(
            onPressed: () {
              if (scaffoldKey.currentState!.isEndDrawerOpen) {
                scaffoldKey.currentState!.closeEndDrawer();
              } else {
                scaffoldKey.currentState!.openEndDrawer();
              }
            },
            icon: Icon(Icons.dashboard_outlined),
            iconSize: 30,
            color: Colors.white,
          ),
        ],
      ),
      endDrawer: Drawer(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Image.asset('assets/community.png'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Text(
                    'Explore Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.amber[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'All',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
