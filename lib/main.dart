import 'package:flutter/material.dart';
import 'package:photo_gallery/Screens/home.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Gallery App",
      home: Home(),
      theme: ThemeData(

      ),
    );
  }
}
