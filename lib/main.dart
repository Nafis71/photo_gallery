import 'package:flutter/material.dart';
import 'package:photo_gallery/Screens/home.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gallery App",
      home: Home(),
    );
  }
}
