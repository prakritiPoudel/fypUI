import 'package:flutter/material.dart';
import 'package:sp_ui/widgets/styles.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        Container(
            height: 100, width: 10, child: Image.asset("./images/BD.jpg")),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 70.0),
          child: Text(
            "Contact Us",
            style: kTitle,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Get in touch with us if you have any questions, need support or just want to learn more about Sporty Way",
            style: kBodyText1,
            textAlign: TextAlign.justify,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          " How Can I get in Touch ?",
          style:
              TextStyle(color: Color.fromARGB(255, 212, 35, 22), fontSize: 18),
        ),
        const SizedBox(
          height: 20,
        ),
        ListTile(
          tileColor: Colors.grey[200],
          leading: const Icon(Icons.email_outlined),
          title: Text("Email", style: kBodyText1),
          subtitle: const Text(
            "For sales:@gmail.com\nFor support:@gmain.com",
            style: TextStyle(),
          ),
        ),
        const SizedBox(height: 40),
        ListTile(
          tileColor: Colors.grey[200],
          leading: const Icon(Icons.call),
          title: Text("Phone", style: kBodyText1),
          subtitle: const Text(
            "For sales:@gmail.com\nFor support:@gmain.com",
            style: TextStyle(),
          ),
        ),
        const SizedBox(height: 110),
        Center(
          child: Text(
            "Follow Us on",
            style: kBodyText1,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: ListTile(
                  visualDensity: const VisualDensity(vertical: -4),
                  tileColor: kThemeColor,
                  leading: const Icon(
                    Icons.facebook_outlined,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Facebook",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const VerticalDivider(width: 1.0),
            Expanded(
                child: Center(
                    child: ListTile(
              visualDensity: const VisualDensity(vertical: -4),
              tileColor: kThemeColor,
              leading: const Icon(
                Icons.snapchat_rounded,
                color: Color.fromARGB(255, 243, 250, 110),
              ),
              title: const Text(
                "SnapChat",
                style: TextStyle(color: Colors.white),
              ),
            ))),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Our "),
            Text(
              " Terms of Use ",
              style: TextStyle(color: Color.fromARGB(255, 54, 99, 246)),
            ),
            Text(" and "),
            Text(
              "Privacy Policy",
              style: TextStyle(color: Color.fromARGB(255, 54, 99, 246)),
            )
          ],
        ),
      ],
    ));
  }
}
