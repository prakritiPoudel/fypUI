import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import '../view/home.dart';
import '../view/searchPage.dart';
import '../view/user_profile.dart';

class MainPanel extends StatefulWidget {
  const MainPanel({super.key});
  static String path = "/mainpanel";

  @override
  State<MainPanel> createState() => _MainPanelState();
}

class _MainPanelState extends State<MainPanel> {
  int index = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        // tabBorderRadius: ,
        backgroundColor: const Color.fromARGB(255, 236, 236, 236),
        selectedIndex: index,
        onTabChange: (value) {
          pageController.jumpToPage(value);
        },
        color: const Color.fromARGB(255, 18, 66, 211),
        activeColor: Colors.white,
        tabBackgroundColor: const Color.fromARGB(255, 18, 66, 211),
        curve: Curves.easeIn,
        gap: 5,
        tabBorderRadius: 0,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.games,
            text: "Play",
          ),
          GButton(
            icon: Icons.person,
            text: "Profile",
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            index = 0;
          });
        },
        children: [const HomePage(), SearchPage(), ProfileScreen()],
      ),
    );
  }
}
