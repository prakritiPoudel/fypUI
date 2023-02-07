import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sp_ui/homePage_section/sideBar.dart';
import 'package:sp_ui/screen/home.dart';
import 'package:sp_ui/screen/login_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static final List<Widget> _widgetOptions = [
    const HomePage(),
    const Text(
      "Search",
      style: optionStyle,
    ),
    const Text(
      "Profile",
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text("Sporty Way"),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 50, 59, 241),
        foregroundColor: Color.fromARGB(255, 244, 240, 240),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 243, 242, 242),
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Login();
                  }),
                );
              },
              icon: const Icon(
                Icons.app_registration_rounded,
                color: Color.fromARGB(255, 244, 243, 243),
              ))
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SafeArea(
          child: GNav(
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
            icon: Icons.search,
            text: "Search",
          ),
          GButton(icon: Icons.person, text: "Profile"),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      )),
    );
  }
}
