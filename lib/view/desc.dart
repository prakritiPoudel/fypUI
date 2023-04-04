import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sp_ui/view/bookingSlot.dart';
import 'package:sp_ui/view/bottomsheets.dart';
import 'package:sp_ui/widgets/styles.dart';

class Description extends StatefulWidget {
  Description({Key? key}) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 800,
            width: 800,
            color: Color.fromARGB(255, 232, 228, 228),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    const SizedBox(
                      height: 200,
                      width: 800,
                    ),
                    Positioned(
                      child: SizedBox(
                        height: 150,
                        width: 800,
                        child: ClipRRect(
                          child: Image.asset("images/Swimming.jpg",
                              fit: BoxFit.cover, height: 200, width: 800),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      child: Container(
                        height: 50,
                        width: 500,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 10.0),
                              child: Text("Leono Sports Park", style: kstyle),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "₹625 onwards 7:00 am - 11:00 pm",
                                style: GoogleFonts.nunitoSans(
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 330,
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.star,
                          size: 10.0,
                        ),
                        label: const Text('3.5'),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 60,
                  width: 410,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Text("Location", style: kstyle),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.pin_drop),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("Pokhara-9,Nagdhunga"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 170,
                  width: 410,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: kPadding,
                        child: Text("Amenities", style: kstyle),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: kPadding,
                            child: const Text("Changing Room"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 8.0,
                              top: 8.0,
                            ),
                            child: Icon(
                              FontAwesomeIcons.chair,
                              size: 16.0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: kPadding,
                            child: Text("Drinking Water"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 8.0,
                              top: 8.0,
                            ),
                            child: Icon(
                              FontAwesomeIcons.bottleWater,
                              size: 16.0,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 8.0,
                          top: 8.0,
                          left: 8.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Floods Lights"),
                            Icon(
                              FontAwesomeIcons.lightbulb,
                              size: 16.0,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 8.0,
                          top: 8.0,
                          left: 8.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Seating Lounge"),
                            Icon(
                              FontAwesomeIcons.table,
                              size: 16.0,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 8.0,
                          top: 8.0,
                          left: 8.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Washroom"),
                            Icon(
                              FontAwesomeIcons.bath,
                              size: 16.0,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: 420,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      //   top: 8.0,
                      left: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Venues Rules",
                          style: kstyle,
                        ),
                        const SizedBox(
                            height: 20, width: 50, child: BottomSheets())
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 70,
                  width: 410,
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Text("Review Venue", style: kstyle),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Booking();
                        },
                      ),
                    );
                  },
                  child: Container(
                      height: 30,
                      width: 411,
                      decoration: kDecoration,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Book Swimming Slots",
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )),
                ),
                // ElevatedButton(onPressed: () {}, child: Text("Book Swimming Slots"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
