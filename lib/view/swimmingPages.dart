import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';
import 'package:sp_ui/view/desc.dart';

class Swimming extends StatelessWidget {
  Swimming({Key? key}) : super(key: key);
  final aNames = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("swimming Section"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: 800,
            width: 800,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text("Available Venues (197)",
                    style: GoogleFonts.karla(fontSize: 18)),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Description()));
                        },
                        child: Container(
                          height: 240,
                          width: 400,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 194, 193, 193)),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                child: Text(
                                  "Leono Sports Park",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Pokhara-9 Nagdhunga",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(fontSize: 11)),
                                ),
                              ),
                              const SizedBox(
                                height: 160,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Container(
                                  height: 20,
                                  width: 280,
                                  child: Marquee(
                                      text:
                                          "ChangingRoom, Washroom, FloodLights",
                                      scrollAxis: Axis.horizontal,
                                      blankSpace: 30.0,
                                      velocity: 500,
                                      pauseAfterRound: Duration(
                                        seconds: 3,
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 320.0, top: 8.0),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star,
                            size: 12.0,
                          ),
                          label: Text('3.5'),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 10,
                        right: 10,
                        child: Container(
                          height: 140,
                          width: 330,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                                alignment: Alignment(-.2, 0),
                                image: AssetImage("images/Swimming.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      // Positioned(
                      //     top: 20,
                      //     child: Container(
                      //       height: 20,
                      //       width: 20,
                      //       child:
                      //           Text("Changing room, Flood Lights, Equipments"),
                      //     ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
