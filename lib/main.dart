import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegram/screen/home/home_screen.dart';
void main()
{
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}