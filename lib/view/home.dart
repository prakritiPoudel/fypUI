import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sp_ui/homePage_section/roundSec.dart';
import 'package:sp_ui/homePage_section/venueRegistration.dart';
import 'package:sp_ui/model/carouselSlider.dart';
import 'package:sp_ui/view/venueForm.dart';
import 'package:sp_ui/view/venueList.dart';

import '../homePage_section/sideBar.dart';
import '../test.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text("Sporty Way"),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 50, 59, 241),
        foregroundColor: const Color.fromARGB(255, 244, 240, 240),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const VenueList();
                }),
              );
            },
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
                    return const Login();
                  }),
                );
              },
              icon: const Icon(
                Icons.app_registration_rounded,
                color: Color.fromARGB(255, 244, 243, 243),
              ))
        ],
      ),
      body: GestureDetector(
        onTap: () {},
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: SizedBox(
                height: 800,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const slider(),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("Everything you need is on SportyWay",
                          style: GoogleFonts.ptSerif(
                              textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal))),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SportItems(),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: const Text("Popular Venues to play at"),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Lchip(),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 130.0),
                          child: Text("List Your Venue with Us",
                              style: GoogleFonts.ptSerif(
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal))),
                        ),
                        Container(
                          child: Card(
                            elevation: 10.0,
                            color: const Color.fromARGB(255, 123, 155, 245),
                            // shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                  child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const VenueForm();
                                      },
                                    ),
                                  );
                                },
                                child: Text("Join Us",
                                    style: GoogleFonts.ptSerif(
                                        textStyle: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white))),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    RegisterVenue(),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
