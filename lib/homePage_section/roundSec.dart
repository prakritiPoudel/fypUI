import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sp_ui/view/swimmingPages.dart';

class SportItems extends StatelessWidget {
  final List sImages = [
    "SW",
    "target",
    "BD",
    "tennis",
    "football",
    "skates",
    "VB"
  ];
  final List sNames = [
    "Swimming\nPool ",
    "Archery",
    "Badmintion\nCourt",
    "Tennis\nCourt",
    "Football\nField",
    "Skating\nHall",
    "VolleyBall"
  ];
  final List sRoutes = [
    Swimming(),
  ];

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 130,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: sNames.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => sRoutes[index]));
                      },
                      child: Container(
                        height: 90,
                        color: const Color.fromARGB(255, 119, 201, 216)
                            .withOpacity(0.06),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 65,

                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 10.0),
                                    child: Card(
                                      shape: CircleBorder(),
                                      elevation: 15.0,
                                      child: ClipOval(
                                        child: Align(
                                          // heightFactor: 0.10,
                                          // widthFactor: 0.8,
                                          child: Image.asset(
                                            "images/${sImages[index]}.jpg",
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                //),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                sNames[index],
                                style: GoogleFonts.karla(
                                  textStyle:
                                      const TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ));
                }),
          ),
        ),
      ],
    );
  }
}
