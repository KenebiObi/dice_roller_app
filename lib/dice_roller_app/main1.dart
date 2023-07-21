import 'package:flutter/material.dart';
import 'package:new_udemy_app/dice_roller_app/first_page.dart';

void main() {
  runApp(
    const MaterialApp(
      home: FirstPage(
        [
          Color.fromARGB(255, 66, 72, 255),
          Color.fromARGB(255, 0, 255, 30),
        ],
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
// 
