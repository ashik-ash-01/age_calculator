import 'package:flutter/material.dart';
import 'package:month_year_picker/month_year_picker.dart';
import 'package:photosdemo/MainScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:month_year_picker/month_year_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "D Age ",
      color: Colors.black12,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "D age",
          ),
          centerTitle: true,
        ),
        body: MainScreen(),
      ),
    );
  }
}
