import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:photo_gallery/Screens/home.dart';
import 'package:device_preview/device_preview.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Gallery App",
      home: Home(),
    );
  }
}