import 'package:flutter/material.dart';
import '../../Theme/container_theme.dart';
import '../../Theme/text_theme.dart';

Widget bottomContainer(
        {required Orientation orientation,
        required BuildContext context,
        required String containerLabel,
        required String containerImage}) =>
    Container(
      width: (orientation == Orientation.portrait)
          ? MediaQuery.of(context).size.width * 0.45
          : MediaQuery.of(context).size.width * 0.22,
      height: 180,
      margin: (orientation == Orientation.portrait)
          ? const EdgeInsets.only(top: 20.0, bottom: 10.00)
          : const EdgeInsets.only(bottom: 10.00),
      decoration: ContainerTheme.getBottomContainerBoxDecoration(
          containerImage: containerImage,
          boxShadow: BoxShadow(
            color: Colors.black.withOpacity(0.50),
            spreadRadius: 0,
            blurRadius: 30,
            offset: const Offset(0, 15),
            blurStyle: BlurStyle.normal,
          )),
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Text(
          containerLabel,
          style: TextThemes.getTextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
