import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:sp_ui/model/profilePage.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final List sRoutes = [
    // const LunchDetail(),
    // const SnacksDetail(),
    // const DinnerDetail()
  ];
  static String path = "/ProfileScreenPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: const Color.fromARGB(255, 18, 66, 211),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Card(
                elevation: 10.0,
                shadowColor: Color.fromARGB(255, 53, 104, 255),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)

                    // side: BorderSide(
                    //   color: Colors.greenAccent,
                    // ),
                    ),
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 240,
                  width: 380,
                  // ignore: prefer_const_constructors
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 30.0, left: 10.0),
                            child: CircleAvatar(
                              radius: 50.0,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Icon(
                                      Icons.person,
                                      size: 80.0,
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 18, 66, 211),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 60, left: 10.0),
                                child: Text("Name",
                                    style: GoogleFonts.ptSerif(
                                        textStyle:
                                            const TextStyle(fontSize: 18))),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Text("Hobby",
                                    style: GoogleFonts.ptSerif(
                                        textStyle:
                                            const TextStyle(fontSize: 18))),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 320),
                        child: Text("Bio",
                            style: GoogleFonts.ptSerif(
                                textStyle: const TextStyle(fontSize: 18))),
                      ),
                    ],
                  ),
                )),
            Center(
              child: SizedBox(
                height: 450,
                width: 380,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: ListView.builder(
                      itemCount: profileList.length,
                      itemBuilder: (context, index) {
                        ProfileData profile = profileList[index];

                        return Card(
                          elevation: 8,
                          shadowColor: Color.fromARGB(255, 53, 104, 255),
                          child: ListTile(
                            title: Text(profile.title),
                            subtitle: Text(profile.subtitle),
                            leading: Image.network(profile.iconUrl),
                            trailing: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              sRoutes[index]));
                                },
                                child: const Icon(Icons.arrow_forward_ios)),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
