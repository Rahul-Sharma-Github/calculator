import 'package:flutter/material.dart';

Widget resultSection() {
  return Container(
    decoration: const BoxDecoration(
      color: Color(0xff00c6ad),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(62.0),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        left: 35.0,
        right: 35.0,
        top: 30.0,
        bottom: 40.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            '=',
            style: TextStyle(
              fontSize: 62.0,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            '0',
            style: TextStyle(
              fontSize: 62.0,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  );
}
