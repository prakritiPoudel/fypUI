import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/bulletList.dart';

class BottomSheets extends StatelessWidget {
  const BottomSheets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                bottomsheets(context);
              },
              child: const Icon(Icons.keyboard_arrow_down))
        ],
      ),
    ));
  }
}

void bottomsheets(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
            // height: 900,
            // width: 100,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.white,
                  Color.fromARGB(255, 16, 28, 164),
                ], stops: [
                  9 / 10,
                  9 / 10
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                //color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                )),
            // padding: const EdgeInsets.only(top: 10),

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Venue Rules",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 243, 243, 249)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 27,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Rules",
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                BulletList(
                  const [
                    "SportyWay is not liable for any loss, damage or injury to property or person in connection to the provided services by the facility",
                    "Wear appropriate sports attire and shoes while playing.",
                    "Be present at the venue 10 mins prior to the booked slot.",
                    "Management is not responsible for loss of personal belongings or any injuries caused during the match."
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Additional Terms and Conditions",
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                BulletList(const [
                  "No Smoking",
                  "No Drinking",
                ])
              ],
            ),
          ));
}
