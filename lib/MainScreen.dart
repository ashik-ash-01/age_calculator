// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:month_year_picker/month_year_picker.dart';
import 'package:intl/intl.dart';
// import 'package:age_calculator/age_calculator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // DateTime? selectedDate;
  String MyAge = "";

  // get month => calculateAge(DateTime.now(), DateTime(month));
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 60.0,
        ),
        const Center(
          child: Text(
            "Find a your date of birth ",
            // textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        const SizedBox(height: 140),
        MaterialButton(
            onPressed: () => PickDod(context),
            child: Icon(Icons.calendar_today, color: Colors.red)),
        SizedBox(
          height: 2,
        ),
        Text(
          " your age is ",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          MyAge,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.red, fontSize: 40),
        )
      ],
    );
  }

  PickDod(BuildContext context) {
    showDatePicker(
            context: context,
            currentDate: DateTime.now(),
            initialDate: DateTime.now(),
            firstDate: DateTime(1095),
            lastDate: DateTime(2050))
        .then((PickedDate) {
      if (PickedDate != null) {
        CalculatorAge(PickedDate);
      }
    });
  }

  CalculatorAge(DateTime birth) {
    var duration = DateTime.now().difference(birth);
    DateTime now = DateTime.now();
    Duration age = now.difference(birth);

    // print(age.inDays / 365);
    int years = age.inDays ~/ 365;
    int months = (age.inDays % 356) ~/ 30;
    // int days = (((age.inDays % 356) % 30));
    setState(() {
      MyAge = "$years";
    });

    // print(MyAge);
  }
}
