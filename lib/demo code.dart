// // ignore_for_file: depend_on_referenced_packages

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:month_year_picker/month_year_picker.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:intl/intl.dart';
// // import 'package:age_calculator/age_calculator.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   DateTime? selectedDate;

//   // get month => calculateAge(DateTime.now(), DateTime(month));

//   // get year => calculateAge(DateTime.now(), DateTime(year));

//   // get day => calculateAge(DateTime.now(), DateTime(day));
//   // DateDuration duration;
//   // calculateAge(DateTime today, DateTime dod) {
//   //   // ignore: unused_local_variable
//   //   final year = today.year - dod.year;
//   //   final month = today.month - dod.month;
//   //   final day = today.day - dod.day;
//   //   calculateAge(
//   //       DateTime.now(), DateTime([year] as int, [month] as int, [day] as int));
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         const SizedBox(
//           height: 60.0,
//         ),
//         const Center(
//           child: Text(
//             "Find a your date of birth ",
//             // textAlign: TextAlign.center,
//             style: TextStyle(
//                 color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
//           ),
//         ),
//         const SizedBox(height: 40),
//         ElevatedButton(
//           onPressed: () => Picker(
//             selectedDate: selectedDate,
//             onDateChanged: (value) {
//               setState(() {
//                 selectedDate = value;
//               });

//               // calculateAge(DateTime.now(),
//               //     DateTime([year] as int, [month] as int, [day] as int));
//             },
//           ),
//           child: Icon(Icons.calendar_month),
//         )
//       ],
//     );
//   }
// }

// // class DateDuration {
// //   duration = AgeCalculator.age(birthday);
// // }

// // class calculateAge extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     // TODO: implement build
// //     return Duration();
// //   }
// // }

// // class ShowDatePicker extends StatelessWidget {
// //   // ShowDatePicker({required this.switchToCalendarEntryModeIcon
// //   //   required this.iconButton,
// //   // });
// //   // final Function iconButton;
// //   // final Icon switchToCalendarEntryModeIcon;
// //   @override
// //   Widget build(BuildContext context) {
// //     // TODO: implement build
// //     return Container(
// //       child: IconButton(
// //         onPressed: () {},
// //         icon: const Icon(Icons.calendar_today),
// //       ),
// //     );
// //   }
// // }
// //  class DialogRoute extends StatelessWidget {
// //   const DialogRoute({super.key, required builder, required BuildContext context});

// //   @override
// //   Widget build(BuildContext context) {
// //     // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
// //     return DialogRoute<DateTime>(context: context, builder: (BuildContext){
// //       return DatePickerDialog(initialDate: , firstDate: firstDate, lastDate: lastDate)
// //     });
// //   }
// // }

// class Picker extends StatelessWidget {
//   const Picker({
//     required this.onDateChanged,
//     required this.selectedDate,
//     super.key,
//   });

//   final void Function(DateTime) onDateChanged;
//   final DateTime? selectedDate;

//   @override
//   Widget build(BuildContext context) {
//     return CalendarDatePicker(
//       currentDate: selectedDate,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(1950),
//       lastDate: DateTime(2050),
//       onDateChanged: onDateChanged,
//     );
//   }
// }

// // class CalenderDatePicker extends StatelessWidget {
// //   const CalenderDatePicker({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return CalendarDatePicker(
// //         // selectableDayPredicate: (day) {},
        
// //         currentDate: DateTime.now(),
// //         initialDate: DateTime(2024),
// //         firstDate: DateTime(1950),
// //         lastDate: DateTime(2050),
// //         onDateChanged: (Value) {});
// //   }
// // }

// // class DatePickerDialog extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     // TODO: implement build
// //     return switchToInputEntryModeIcon();
// //   }
// // }
