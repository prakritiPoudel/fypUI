import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sp_ui/homePage_section/roundSec.dart';
import 'package:sp_ui/homePage_section/sideBar.dart';
import 'package:sp_ui/homePage_section/venueRegistration.dart';
import 'package:sp_ui/screen/venueForm.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activeindex = 0;

  final List cGames = ["Swimming", "Volleyball", "Badmintion", "Soccer"];

  final List cTitles = [
    "One -stop platforms for",
    "Streamline your booking",
    "Hassel free way ",
    "Make it easier through "
  ];
  final List csubTitles = [
    "800+ venues",
    "by easy slot selection",
    "to digital payment",
    "cancelation and refunds"
  ];
  final colors = const [
    Colors.red,
    Colors.green,
    Colors.greenAccent,
    Colors.amberAccent,
    Colors.blue,
    Colors.amber,
  ];
  final clrs = [Colors.red, Colors.green, Colors.greenAccent];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: SizedBox(
            height: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Text(
                        "Hurry!",
                        style: TextStyle(
                            color: Color.fromARGB(255, 220, 22, 8),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Text(
                        "Book Your Venue!!",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 93, 92, 92)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CarouselSlider.builder(
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        _activeindex = index;
                      });
                    },

                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1.0,
                    // aspectRatio: 16 / 9,
                    enlargeFactor: 0.3,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    height: 150,
                  ),
                  itemCount: cGames.length,
                  itemBuilder: (ctx, index, realIdx) {
                    return Stack(
                      children: [
                        Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width / 1.0,
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Card(
                            elevation: 5.0,
                            shadowColor:
                                const Color.fromARGB(255, 143, 196, 238),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "images/${cGames[index]}.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 80,
                            left: 10,
                            child: SizedBox(
                              height: 60,
                              width: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.2),
                                    child: Text(
                                      cTitles[index],
                                      style: GoogleFonts.karla(
                                        textStyle: const TextStyle(
                                          fontSize: 20,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    csubTitles[index],
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.ptSerif(
                                      textStyle: const TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(99.0),
                    child: AnimatedSmoothIndicator(
                      activeIndex: _activeindex,
                      count: cGames.length,
                      effect: CustomizableEffect(
                        activeDotDecoration: DotDecoration(
                          width: 32,
                          height: 12,
                          color: const Color.fromARGB(255, 36, 63, 215),
                          rotationAngle: 180,
                          verticalOffset: -10,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        dotDecoration: DotDecoration(
                          height: 12,
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(16),
                          verticalOffset: 0,
                        ),
                        spacing: 6.0,
                        inActiveColorOverride: (i) => colors[i],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text("Everything you need is on SportyWay",
                      style: GoogleFonts.ptSerif(
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.normal))),
                ),
                const SizedBox(
                  height: 5,
                ),
                SportItems(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 130.0),
                      child: Text("List Your Venue with Us",
                          style: GoogleFonts.ptSerif(
                              textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal))),
                    ),
                    Container(
                      child: Card(
                        elevation: 10.0,
                        color: Color.fromARGB(255, 123, 155, 245),
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
                                    return VenueForm();
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
              ],
            )),
      ),
    );
  }
}
