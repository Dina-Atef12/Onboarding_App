import 'package:flutter/material.dart';
import 'package:on_boarding_screen/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
