import 'package:flutter/material.dart';
import 'package:learn_english_bt/screens/Home.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Color(0xff795548),
    scaffoldBackgroundColor: Color(0xfff5e9b9)
  ),
));
