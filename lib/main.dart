import 'package:aprendendo_idiomas/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Color(0xFFD72C2D),
      ),
      scaffoldBackgroundColor: Color(0xFFFFFFFF),
    ),
  ));
}

