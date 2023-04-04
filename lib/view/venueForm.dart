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
          child: SizedBox(
            height: 1900,
            width: 800,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 110,
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
                                color:
                                    const Color.fromARGB(255, 182, 181, 181)),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, right: 90.0),
                              child: Text(
                                "Register your Venue with us",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Register your Sporting Venue and grow your business multifold.",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 182, 181, 181)),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 20.0, right: 8.0),
                        child: Text(
                          "Email",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 10.0, left: 20.0, right: 20.0),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Your answer"),
                        ),
                      ),

                      //label: Text("Email"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 182, 181, 181)),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 20.0, right: 8.0),
                        child: Text(
                          "Email",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 10.0, left: 20.0, right: 20.0),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Your answer"),
                        ),
                      ),

                      //label: Text("Email"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 182, 181, 181)),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 20.0, right: 8.0),
                        child: Text(
                          "Your name please",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 10.0, left: 20.0, right: 20.0),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Your answer"),
                        ),
                      ),

                      //label: Text("Email"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 182, 181, 181)),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 20.0, right: 8.0),
                        child: Text(
                          "Phone Number",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 10.0, left: 20.0, right: 20.0),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Your answer"),
                        ),
                      ),

                      //label: Text("Email"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 182, 181, 181)),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 20.0, right: 8.0),
                        child: Text(
                          "City where your venue is located",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 10.0, left: 20.0, right: 20.0),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Your answer"),
                        ),
                      ),

                      //label: Text("Email"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 182, 181, 181)),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 20.0, right: 8.0),
                        child: Text(
                          "Sports your venue caters",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 10.0, left: 20.0, right: 20.0),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Your answer"),
                        ),
                      ),

                      //label: Text("Email"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 182, 181, 181)),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 20.0, right: 8.0),
                        child: Text(
                          "Other information you want to share?",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 10.0, left: 20.0, right: 20.0),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Your answer"),
                        ),
                      ),

                      //label: Text("Email"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Submit',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0, top: 15.0),
                      child: GestureDetector(
                        child: Text(
                          "Clear Form",
                          style: GoogleFonts.ptSans(
                            textStyle: const TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
