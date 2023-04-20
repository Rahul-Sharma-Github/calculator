// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';

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
  int result = 466;
  String history = '12 + 15 x 18 - 20';
  Color col = Color(0xff00c6ad);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            color: const Color(0xff00c6ad),
            child: Padding(
              padding: const EdgeInsets.only(top: 150.0, right: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$history',
                    style: TextStyle(
                        fontSize: 26.0,
                        color: Colors.white70,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Color(0xff00c6ad),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(62.0))),
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 35.0, right: 35.0, top: 30.0, bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('=',
                      style: TextStyle(
                          fontSize: 62.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                  Text('$result',
                      style: const TextStyle(
                          fontSize: 62.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              result = 0;
                              history = '0';
                            });
                          },
                          child: Text(
                            'C',
                            style:
                                TextStyle(color: Colors.amber, fontSize: 28.0),
                          ),
                        ),
                        Text('+/-',
                            style:
                                TextStyle(color: Colors.amber, fontSize: 28.0)),
                        Text('%',
                            style:
                                TextStyle(color: Colors.amber, fontSize: 28.0)),
                        Text('/',
                            style:
                                TextStyle(color: Colors.amber, fontSize: 28.0)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text('7',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 28.0)),
                        Text('8',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 28.0)),
                        Text('9',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 28.0)),
                        Text('X',
                            style:
                                TextStyle(color: Colors.amber, fontSize: 28.0)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          '4',
                          style: TextStyle(color: Colors.grey, fontSize: 28.0),
                        ),
                        Text('5',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 28.0)),
                        Text('6',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 28.0)),
                        Text('‒',
                            style:
                                TextStyle(color: Colors.amber, fontSize: 28.0)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            result = result.toInt() + 1;
                          },
                          child: const Text('1',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 28.0)),
                        ),
                        const Text('2',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 28.0)),
                        const Text('3',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 28.0)),
                        const Text('+',
                            style:
                                TextStyle(color: Colors.amber, fontSize: 28.0)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 50.0),
                            child: Text('.',
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 28.0)),
                          ),
                        ),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text('0',
                                style: TextStyle(
                                    color: Colors.amber, fontSize: 28.0)),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                result = result;
                                history = history;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: col,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.elliptical(50, 50))),
                              height: 70.0,
                              alignment: Alignment.center,
                              child: Text('=',
                                  style: TextStyle(
                                      color: Colors.white,
                                      backgroundColor: col,
                                      fontSize: 28.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
