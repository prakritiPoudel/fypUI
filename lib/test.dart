import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Lchip extends StatelessWidget {
  const Lchip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 16.0,
        runSpacing: 16.0,
        children: [
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Chip(
                backgroundColor: Color.fromARGB(255, 201, 220, 236),
                label: Text("Pokhara"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Chip(
              backgroundColor: Color.fromARGB(255, 201, 220, 236),
              label: Text("Dharan"),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Chip(
              backgroundColor: Color.fromARGB(255, 201, 220, 236),
              label: Text("Baglung"),
            ),
          )
        ],
      ),
    );
  }
}
