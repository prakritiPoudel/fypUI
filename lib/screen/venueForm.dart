import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VenueForm extends StatelessWidget {
  const VenueForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Center(
            child: Container(
              height: 800,
              width: 800,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 350,
                              margin: const EdgeInsets.only(top: 10.0),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [
                                        Colors.transparent,
                                        Color.fromARGB(255, 33, 51, 243),
                                      ],
                                      stops: [
                                        7 / 8,
                                        7 / 8
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter),
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 182, 181, 181)),
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white),
                              child: Padding(
                                padding: EdgeInsets.only(top: 14.0),
                                child: Text(
                                  "Register your Venue with us",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 100,
                      width: 400,
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 100,
                      width: 400,
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 100,
                      width: 400,
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
