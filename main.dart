import 'package:flutter/material.dart';
import 'package:layout_mbanking_beta/Splash.dart';
import 'dart:async';
import './Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test',
      home: Splash(),
    );
  }
}

