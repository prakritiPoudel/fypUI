import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sp_ui/widgets/styles.dart';
import 'package:sp_ui/widgets/theme.dart';

class Booking extends StatelessWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime _selectedDate = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat.yMMMd().format(DateTime.now()),
                        style: subHeadingStyle,
                      ),
                      Text(
                        "Today",
                        style: headingStyle,
                      ),
                    ],
                  )),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 10),
            child: DatePicker(
              DateTime.now(),
              height: 90,
              width: 80,
              initialSelectedDate: DateTime.now(),
              selectionColor: kThemeColor,
              selectedTextColor: Colors.white,
              dateTextStyle: GoogleFonts.lato(
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              dayTextStyle: GoogleFonts.lato(
                textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              monthTextStyle: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey)),
              onDateChange: (date) {
                _selectedDate = date;
              },
            ),
          ),
        ],
      ),
    );
  }
}
