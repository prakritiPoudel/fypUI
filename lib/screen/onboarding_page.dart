import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sp_ui/homePage_section/bottomNavBar.dart';
import 'package:sp_ui/widgets/styles.dart';

import 'home.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageController = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 500,
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    onLastPage = (index == 2);
                  });
                },
                children: [
                  Column(
                    children: [
                      //Page 1
                      Expanded(
                        child: Image.asset("./images/BD.jpg"),
                      ),
                      const SizedBox(
                        height: 76,
                      ),
                      Text(
                        "hello",
                        style: kTitle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("welcome to my Aalu app, kahela \n baneyra sakni ho",
                          style: kBodyText1)
                    ],
                  ),
                  Column(
                    //Page 2
                    children: [
                      Expanded(
                        child: Image.asset("./images/Soccer.jpg"),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Text(
                        "hello",
                        style: kTitle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("welcome to my Aalu app, kahela \n baneyra sakni ho",
                          style: kBodyText1)
                    ],
                  ),
                  Column(
                    //Page 3
                    children: [
                      Expanded(
                        child: Image.asset("./images/tennis.jpg"),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Text(
                        "hello",
                        style: kTitle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("welcome to my Aalu app, kahela \n baneyra sakni ho",
                          style: kBodyText1)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 120),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  onLastPage
                      ? const Text("")
                      : GestureDetector(
                          onTap: () {
                            pageController.jumpToPage(2);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Skip", style: kBodyText1),
                          )),
                  onLastPage
                      ? Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: SmoothPageIndicator(
                              controller: pageController, count: 3),
                        )
                      : SmoothPageIndicator(
                          controller: pageController, count: 3),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return BottomNavBar();
                                },
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              "Done",
                              style: kBodyText1,
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            pageController.nextPage(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeIn);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              "Next",
                              style: kBodyText1,
                            ),
                          ),
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
