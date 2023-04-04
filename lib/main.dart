import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sp_ui/view/bottomsheets.dart';
import 'package:sp_ui/view/desc.dart';
import 'package:sp_ui/view/home.dart';
import 'package:sp_ui/view/onboarding_page.dart';
import 'package:sp_ui/widgets/theme.dart';
import 'constant.dart';
import 'homePage_section/bottomNavBar.dart';

Future main() async {
  await dotenv.load(fileName: Constant.dotFile);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(primaryColor: Colors.blue, brightness: Brightness.light),
      theme: Themes.light,
      darkTheme: Themes.dark,

      themeMode: ThemeMode.light,

      // home: const OnboardingPage(),
      home: const MainPanel(),
    );
  }
}
