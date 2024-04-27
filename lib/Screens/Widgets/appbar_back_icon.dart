import 'package:flutter/material.dart';

Widget backIcon() => Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white38, borderRadius: BorderRadius.circular(10.0)),
      child: const Center(
        child: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
      ),
    );
