import 'package:flutter/material.dart';

///
import 'package:calculator/home_page_ui/buttons.dart';

Widget buttonSection() {
  return Expanded(
    /// Container for holding the button section
    child: Container(
      color: Colors.white,

      /// Column for holding 5 Rows
      child: Column(
        /// Total 5 Rows containing buttons
        children: [
          /// First Row
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                button('C', const Color(0xffffc107), 28.0),
                button('+/-', const Color(0xffffc107), 28.0),
                button('%', const Color(0xffffc107), 28.0),
                button('/', const Color(0xffffc107), 28.0),
              ],
            ),
          ),

          /// Second Row
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                button('7', const Color(0xFF9E9E9E), 28.0),
                button('8', const Color(0xFF9E9E9E), 28.0),
                button('9', const Color(0xFF9E9E9E), 28.0),
                button('X', const Color(0xffffc107), 28.0),
              ],
            ),
          ),

          /// Third Row
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                button('4', const Color(0xFF9E9E9E), 28.0),
                button('5', const Color(0xFF9E9E9E), 28.0),
                button('6', const Color(0xFF9E9E9E), 28.0),
                button('-', const Color(0xffffc107), 60.0),
              ],
            ),
          ),

          /// Fourth Row
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                button('1', const Color(0xFF9E9E9E), 28.0),
                button('2', const Color(0xFF9E9E9E), 28.0),
                button('3', const Color(0xFF9E9E9E), 28.0),
                button('+', const Color(0xffffc107), 30.0),
              ],
            ),
          ),

          /// Fivth Row
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 45.0, bottom: 30.0),
                    child: button('.', const Color(0xffffc107), 48.0),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: button('0', const Color(0xffffc107), 28.0),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(50, 50),
                      ),
                      color: Color(0xff00c6ad),
                    ),
                    height: 70.0,
                    alignment: Alignment.center,
                    child: button('=', const Color(0xffffffff), 28.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
