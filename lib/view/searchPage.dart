import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0, left: 90.0),
          child: Text(
            "Search Page",
            style: TextStyle(fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}
