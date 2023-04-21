// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables

import 'package:calculator/home_page_ui/button_section.dart';
import 'package:flutter/material.dart';

/// UI Components Imports
import 'package:calculator/home_page_ui/result_section.dart';
import 'package:calculator/home_page_ui/history_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///
      /// Full height column
      ///
      body: Column(
        children: [
          /// History Section
          historySection(),

          /// Result Section
          resultSection(),

          /// Button Section
          buttonSection(),
        ],
      ),
    );
  }
}
