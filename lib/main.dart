import 'package:assignment_2/bill.dart';
import 'fruits.dart';
import 'package:assignment_2/start.dart';
import 'package:assignment_2/vegetables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),

      home: StartPage(),
      routes: {
        '/startpage':(context) => StartPage(),
        '/vegetablespage':(context) => VegetablePage(),
        '/fruitspage':(context) => FruitsPage(),
        '/billpage':(context) => BillPage(),

      }


    );
  }
}
