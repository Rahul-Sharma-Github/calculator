import 'package:flutter/material.dart';

Widget historySection() {
  return Container(
    alignment: Alignment.centerRight,
    color: const Color(0xff00c6ad),
    child: Padding(
      padding: const EdgeInsets.only(
        top: 130.0,
        right: 35.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            '12 + 34 - 56',
            style: TextStyle(
              fontSize: 26.0,
              color: Colors.white70,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  );
}
