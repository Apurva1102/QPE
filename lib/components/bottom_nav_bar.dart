import 'package:flutter/material.dart';
import 'package:tech_1/screens/dailytask_screen.dart';
import 'package:tech_1/screens/profile_screen.dart';
import 'package:tech_1/screens/scandoc_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: Container(
            color: Colors.black,
            height: 70,
            child: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "Profile",
                ),
                Tab(
                  icon: Icon(Icons.qr_code_scanner_rounded),
                  text: "Scan",
                ),
              ],
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: Color(0xFF999999),
            ),
          ),
          body: TabBarView(
            children: [
              DailytaskScreen(),
              ProfileScreen(),
              ScandocScreen(),
            ],
          ),
        )
    );
  }
}
