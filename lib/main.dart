import 'package:demo_app/homepage.dart';
import 'package:demo_app/list.dart';
import 'package:demo_app/listpage.dart';
import 'package:demo_app/login.dart';
import 'package:demo_app/ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Firstpage());
}

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ui());
  }
}
